#ifndef __BTECTURE_MANAGER_CXX__
#define __BTECTURE_MANAGER_CXX__

#include "BGame.h"

class BTextureManager{

  public:
    static SDL_Texture *LoadTexture(const char* texture, SDL_Renderer* ren);


};

#endif /* __BTECTURE_MANAGER_CXX__ */