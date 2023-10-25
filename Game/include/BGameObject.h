#ifndef __BGAME_OBJECT_CXX__
#define __BGAME_OBJECT_CXX__

#include "BGame.h"

class BGameObject{
  public:
    BGameObject(const char* textureSheet, SDL_Renderer *ren, int x, int y);
    ~BGameObject();

    void Update();
    void Render();

  private:

    SDL_Texture*  objTexture;
    SDL_Rect      srcRect, destRect;
    SDL_Renderer* Renderer;

    int xPos;
    int yPos;
};

#endif /* __BGAME_OBJECT_CXX__ */