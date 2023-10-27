#include "BGame.h"
#include "BeerventuresConfig.h"

int main(int argc, char* argv[]){
  // report version
  std::cout << argv[0] << " Version " << Beerventures_VERSION_MAJOR << "."
            << Beerventures_VERSION_MINOR << std::endl;

  const int FPS = 60;
  const int frameDelay = 1000 / FPS;

  Uint32 frameStart;
  int frameTime;

  BGame *game = nullptr;

  game = new BGame();

  game->Init("JinxEngine",SDL_WINDOWPOS_CENTERED,SDL_WINDOWPOS_CENTERED, 800, 640, false);

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