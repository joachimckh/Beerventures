#ifndef __B_COLLIDER_COMPONENTS_H
#define __B_COLLIDER_COMPONENTS_H

#include <string>
#include <SDL.h>
#include "BComponents.h"
#include "BTransformComponent.h"

class BColliderComponent : public BComponent{
  public:
    SDL_Rect collider;
    std::string tag;

    BTransformComponent *transform;

    BColliderComponent(std::string t);

    void Init() override;
    void Update() override;

    SDL_Rect GetCollider();
    // void Draw() override;



};

#endif /* __B_COLLIDER_COMPONENTS_H */