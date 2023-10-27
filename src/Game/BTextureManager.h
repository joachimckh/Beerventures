#ifndef __BTECTURE_MANAGER_H__
#define __BTECTURE_MANAGER_H__

#include "BGame.h"

class BTextureManager{

  public:
    static SDL_Texture *LoadTexture(const char* texture);
    static void Draw(SDL_Texture *tex, SDL_Rect src, SDL_Rect dst);
    static void Draw(SDL_Texture *tex, SDL_Rect src, SDL_Rect dst, SDL_RendererFlip flip);


};

#endif /* __BTECTURE_MANAGER_H__ */