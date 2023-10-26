#ifndef __BSPRITE_COMPONENTS_H
#define __BSPRITE_COMPONENTS_H

#include <SDL.h>
#include "BTransformComponent.h"


class BSpriteComponent : public BComponent{
  private:

    BTransformComponent*   transform;
    SDL_Texture*          texture;
    SDL_Rect              srcRect, dstRect;

  public:

    BSpriteComponent(const char* path);


    void Init() override;
    void Update() override;
    void Draw() override;

    void SetTex(const char* path);

};



#endif /* __BSPRITE_COMPONENTS_H */