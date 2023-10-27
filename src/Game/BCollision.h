#ifndef __B_COLLISION_H__
#define __B_COLLISION_H__

#include "SDL.h"
#include "BColliderComponent.h"

class BColliderComponent;

class BCollision{
  public:

    static bool AABB(const SDL_Rect& rectA, const SDL_Rect& rectB); //Access aline bounding box
    static bool AABB(const BColliderComponent& colA, const BColliderComponent& colB); //Access aline bounding box

};


#endif /* __B_COLLISION_H__ */