#ifndef __BGAME_H__
#define __BGAME_H__

#include <SDL.h>
#include <SDL_image.h>
#include <stdio.h>
#include <iostream>
#include <vector>

class BColliderComponent;

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
    static const int gResolution;
    static SDL_Event event;
    
    
    static bool isRunning;

    static SDL_Rect camera;


    enum groupLabels : std::size_t{
      groupMap,
      groupPlayers,
      groupColliders
};

  private:
    
    SDL_Window    *Window;
    


};


#endif /* __BGAME_H__ */