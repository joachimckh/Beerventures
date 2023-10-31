#ifndef __B_COLLIDER_COMPONENTS_H
#define __B_COLLIDER_COMPONENTS_H

#include <string>
#include <SDL.h>
#include "BComponents.h"
#include "BTransformComponent.h"
#include "BTextureManager.h"

class BColliderComponent : public BComponent{
  public:
    SDL_Rect collider;
    std::string tag;

    SDL_Texture*  tex;
    SDL_Rect      srcR, dstR;

    BTransformComponent *transform;

    BColliderComponent(std::string t);
    BColliderComponent(std::string t, int xPos, int yPos, int size);

    void Init() override;
    void Update() override;

    SDL_Rect GetCollider();
    void Draw() override;



};

#endif /* __B_COLLIDER_COMPONENTS_H */