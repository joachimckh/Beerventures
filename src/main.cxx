#include "BGame.h"
#include "BPlayer.h"

static const int WINDOW_WIDTH = 800;
static const int WINDOW_HEIGHT = 640;

int main(){

  const int FPS = 60;
  const int frameDelay = 1000 / FPS;

  Uint32 frameStart;
  int frameTime;

  BGame *game = nullptr;

  game = new BGame();

  game->Init("JinxEngine",SDL_WINDOWPOS_CENTERED,SDL_WINDOWPOS_CENTERED, WINDOW_WIDTH, WINDOW_HEIGHT, false);

  while (game->Running()){

    frameStart = SDL_GetTicks();

    game->HandleEvents();
    game->Update();
    game->Render();

    frameTime = SDL_GetTicks() - frameStart;

    if(frameDelay>frameTime){
      SDL_Delay(frameDelay - frameTime); // delaying frames
    }
  }

  game->Clean();

  delete game;


  return 0;
}