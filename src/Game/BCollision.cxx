#include "BCollision.h"


bool BCollision::AABB(const SDL_Rect& rectA, const SDL_Rect& rectB){
  if(
    rectA.x + rectA.w >= rectB.x &&
    rectB.x + rectB.w >= rectA.x &&
    rectA.y + rectA.h >= rectB.y &&
    rectB.y + rectB.h >= rectA.y
  ){
    return true;
  }

  return false;
}
bool BCollision::AABB(const BColliderComponent& colA, const BColliderComponent& colB){
  if (AABB(colA.collider, colB.collider)){
    // std::cout << colA.tag << "hit: " << colB.tag << std::endl;
    return true;
  }
  else{
    return false;
  }
}