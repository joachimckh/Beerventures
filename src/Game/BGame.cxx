#include "BGame.h"
#include "BTextureManager.h"
//#include "../Core/BUnit.h"
#include "../Core/BPlayer.h"
#include "../Core/BHUD.h"
#include "BMap.h"

BPlayer *player;
BUnit *enemy;
BMap *map;
BHUD *hud;

SDL_Renderer* BGame::Renderer = nullptr;

BGame::BGame() :
cnt(0)
{}
BGame::~BGame()
{}
void BGame::Init(const char* title, int xPos, int yPos, int width, int height, bool fullScreen){
  int flags(0);
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
    TTF_Init();
    isRunning = true;
  }
  else{
    isRunning = false;
  }

  player = new BPlayer("src/Assets/rogue_32.png",0,0);
  enemy = new BUnit("src/Assets/rogue_32.png",50,50);
  hud = new BHUD(width, height, *player);
  map = new BMap();

  

}
void BGame::HandleEvents(){
  SDL_Event event;
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
  cnt++;

  player->Update();
  enemy->Update();

}
void BGame::Render(){
  SDL_RenderClear(Renderer);
  // add stuff to render here
  map->DrawMap();
  player->Render();
  enemy->Render();
  hud->Render();
  SDL_RenderPresent(Renderer);

}
void BGame::Clean(){
  SDL_DestroyWindow(Window);
  SDL_DestroyRenderer(Renderer);
  TTF_Quit();
  SDL_Quit();
  std::cout << "Game cleaned!..." << std::endl;
}
bool BGame::Running(){
  return isRunning;
}


