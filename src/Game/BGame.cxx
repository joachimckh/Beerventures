#include "BGame.h"
#include "BTextureManager.h"
#include "BMap.h"
#include "BComponents.h"
#include "BVector2D.h"

BMap *map;

SDL_Renderer* BGame::Renderer = nullptr;
const int BGame::gResolution{32};
SDL_Event BGame::event;

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
      SDL_SetRenderDrawColor(Renderer, 0, 0, 0, 0);
      std::cout << "Renderer created" << std::endl; 
    }

    isRunning = true;
  }
  else{
    isRunning = false;
  }

  map = new BMap();

  player.AddComponents<BTransformComponent>(0,0);
  player.AddComponents<BSpriteComponent>("assets/rogue_32.png");
  player.AddComponents<BKeyBoardController>();
  
  
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

  // if (player.GetComponent<BTransformComponent>().position.x>400){
  //   player.GetComponent<BSpriteComponent>().SetTex("assets/undead_32.png");
  // }


}
void BGame::Render(){
  SDL_RenderClear(Renderer);
  // add stuff to render here
  map->DrawMap();
  manager.Draw();



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