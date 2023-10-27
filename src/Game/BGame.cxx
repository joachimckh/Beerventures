#include "BGame.h"
#include "BTextureManager.h"
#include "BMap.h"
#include "BComponents.h"
#include "BVector2D.h"
#include "BCollision.h"

BMap *map;

SDL_Renderer* BGame::Renderer = nullptr;
const int BGame::gResolution{32};
SDL_Event BGame::event;
std::vector<BColliderComponent*> BGame::colliders;

BManager manager;
auto& player{manager.AddEntity()};
auto& wall{manager.AddEntity()};

enum groupLabels : std::size_t{
  groupMap,
  groupPlayers,
  groupEnemies,
  groupColliders
};

BGame::BGame()
{}
BGame::~BGame()
{}
void BGame::Init(const char* title, int xPos, int yPos, int width, int height, bool fullScreen){
  int flags{0};
  if (fullScreen){ flags = SDL_WINDOW_FULLSCREEN; }

  if (SDL_Init(SDL_INIT_EVERYTHING) == 0){
    std::cout << "Subsystems initialized!" << std::endl;

    Window = SDL_CreateWindow(title, xPos, yPos, width, height, flags);
    if (Window){ 
      std::cout << "Window created" << std::endl; 
      }

    Renderer = SDL_CreateRenderer(Window,-1,0);
    if (Renderer) { 
      SDL_SetRenderDrawColor(Renderer, 0, 0, 0, 0);
      std::cout << "Renderer created" << std::endl; 
    }

    isRunning = true;
  }
  else{
    isRunning = false;
  }

  map = new BMap();

  BMap::LoadMap("../src/Assets/m16x16.map",16,16);


  player.AddComponent<BTransformComponent>(1);
  player.AddComponent<BSpriteComponent>("../src/Assets/wolf_tiles.png",true); //192
  player.AddComponent<BKeyBoardController>();
  player.AddComponent<BColliderComponent>("player");
  player.AddGroup(groupPlayers);


  wall.AddComponent<BTransformComponent>(300,300, 300, 20, 1);
  wall.AddComponent<BSpriteComponent>("../src/Assets/dirt.png");
  wall.AddComponent<BColliderComponent>("wall");
  wall.AddGroup(groupMap);
  
  
}
void BGame::HandleEvents(){

  SDL_PollEvent(&event);
  switch(event.type){
    case SDL_QUIT:
      isRunning = false;
      break;
    default:
      break;
  }
}
void BGame::Update(){

  manager.Refresh();
  manager.Update();

  for (auto cc : colliders){
    BCollision::AABB(player.GetComponent<BColliderComponent>(), *cc);
  }


}
auto& tiles(manager.GetGroup(groupMap));
auto& players(manager.GetGroup(groupPlayers));
auto& enemies(manager.GetGroup(groupEnemies));

void BGame::Render(){
  SDL_RenderClear(Renderer);
  for (auto& t : tiles){
    t->Draw();
  }
  for (auto& p : players){
    p->Draw();
  }
  for (auto& e : enemies){
    e->Draw();
  }
  SDL_RenderPresent(Renderer);
}
void BGame::Clean(){
  SDL_DestroyWindow(Window);
  SDL_DestroyRenderer(Renderer);
  SDL_Quit();
  std::cout << "Game cleaned!..." << std::endl;
}
bool BGame::Running(){
  return isRunning;
}

void BGame::AddTile(int id, int x, int y){
  auto& tile{manager.AddEntity()};
  tile.AddComponent<BTileComponent>(x, y, BGame::gResolution, BGame::gResolution, id);
  tile.AddGroup(groupMap);
}