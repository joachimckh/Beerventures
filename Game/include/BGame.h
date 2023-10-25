#ifndef __BGAME_CXX__
#define __BGAME_CXX__

#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <stdio.h>
#include <iostream>

class BGame{
  
  public:
    BGame();
    ~BGame();

    void Init(const char* title, int xPos, int yPos, int width, int height, bool fullScreen);
    
    void HandleEvents();
    void Update();
    void Render();
    void Clean();

    bool Running();

  private:
    int           cnt;
    bool          isRunning;
    SDL_Window    *Window;
    SDL_Renderer  *Renderer;


};


#endif /* __BGAME_CXX__ */