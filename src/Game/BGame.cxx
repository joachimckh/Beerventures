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

bool BGame::isRunning = false;
SDL_Rect BGame::camera = {0,0,800, 640};

BManager manager;
auto& player{manager.AddEntity()};

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
      SDL_SetRenderDrawColor(Renderer, 255, 255, 255, 255);
      std::cout << "Renderer created" << std::endl; 
    }

    isRunning = true;
  }
  else{
    isRunning = false;
  }

  map = new BMap("../src/Assets/terrain_ss.png", 3, 32);

  map->LoadMap("../src/Assets/m25x25.map",25,25);


  player.AddComponent<BTransformComponent>(1);
  player.AddComponent<BSpriteComponent>("../src/Assets/wolf_tiles.png",true); //192
  player.AddComponent<BKeyBoardController>();
  player.AddComponent<BColliderComponent>("player");
  player.AddGroup(groupPlayers);

}
auto& tiles(manager.GetGroup(BGame::groupMap));
auto& players(manager.GetGroup(BGame::groupPlayers));
auto& colliders(manager.GetGroup(BGame::groupColliders));

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

  SDL_Rect playerCol = player.GetComponent<BColliderComponent>().collider;
  BVector2D playerPos = player.GetComponent<BTransformComponent>().position;

  manager.Refresh();
  manager.Update();

  for (auto& c : colliders){
    SDL_Rect cCol = c->GetComponent<BColliderComponent>().collider;
    if (BCollision::AABB(cCol, playerCol)){
      player.GetComponent<BTransformComponent>().position = playerPos;
    }
  }

  camera.x = player.GetComponent<BTransformComponent>().position.x - 400;
  camera.y = player.GetComponent<BTransformComponent>().position.y - 320;
  if (camera.x < 0) camera.x = 0;
  if (camera.y < 0) camera.y = 0;
  if (camera.x > camera.w) camera.x = camera.w;
  if (camera.y > camera.h) camera.y = camera.h;

 

}

void BGame::Render(){
  SDL_RenderClear(Renderer);
  for (auto& t : tiles){
    t->Draw();
  }
  // for (auto& c : colliders){
  //   c->Draw();
  // }
  for (auto& p : players){
    p->Draw();
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
