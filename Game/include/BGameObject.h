#ifndef __BGAME_OBJECT_H__
#define __BGAME_OBJECT_H__

#include "BGame.h"

class BGameObject{
  public:
    BGameObject(const char* textureSheet, int x, int y);
    ~BGameObject();

    void Update();
    void Render();

  private:

    SDL_Texture*  objTexture;
    SDL_Rect      srcRect, destRect;

    int xPos;
    int yPos;
};

#endif /* __BGAME_OBJECT_H__ */