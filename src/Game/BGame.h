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

    static void AddTile(int id, int x, int y);
    static SDL_Renderer *Renderer;
    static const int gResolution;
    static SDL_Event event;
    static std::vector<BColliderComponent*> colliders;
    

  private:
    bool          isRunning;
    SDL_Window    *Window;
    


};


#endif /* __BGAME_H__ */