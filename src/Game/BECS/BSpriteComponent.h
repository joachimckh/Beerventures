#ifndef __BSPRITE_COMPONENTS_H
#define __BSPRITE_COMPONENTS_H

#include <SDL.h>
#include "BTransformComponent.h"
#include "BTextureManager.h"
#include "BAnimation.h"

#include <map>

class BSpriteComponent : public BComponent{
  private:

    BTransformComponent*   transform;
    SDL_Texture*          texture;
    SDL_Rect              srcRect, dstRect;

    bool                  fAnimated = false;
    int                   frames = 0;
    int                   speed = 100;

  public:
    int animIndex = 0;

    std::map<const char*, BAnimation> animations; 

    SDL_RendererFlip spriteFlip = SDL_FLIP_NONE;
    

    BSpriteComponent() = default;
    BSpriteComponent(const char* path);
    BSpriteComponent(const char* path, bool IsAnimated);
    ~BSpriteComponent();


    void Init() override;
    void Update() override;
    void Draw() override;

    void SetTex(const char* path); 

    void Play(const char* animName);   

};



#endif /* __BSPRITE_COMPONENTS_H */