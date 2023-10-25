#ifndef __BGAME_H__
#define __BGAME_H__

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


    static SDL_Renderer *Renderer;

  private:
    int           cnt;
    bool          isRunning;
    SDL_Window    *Window;
    


};


#endif /* __BGAME_H__ */