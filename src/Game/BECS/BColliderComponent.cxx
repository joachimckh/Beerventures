#include "BColliderComponent.h"


BColliderComponent::BColliderComponent(std::string t) :
tag{t}
{}
BColliderComponent::BColliderComponent(std::string t, int xPos, int yPos, int size)
{
  tag = t;
  collider.x = xPos;
  collider.y = yPos;
  collider.h = size;
  collider.w = size;
}
void BColliderComponent::Init(){
  if (!entity->HasComponent<BTransformComponent>()){
    entity->AddComponent<BTransformComponent>();
  }
  transform = &entity->GetComponent<BTransformComponent>();

  tex = BTextureManager::LoadTexture("../src/assets/ColTex.png");
  srcR = { 0, 0, 32, 32 };
  dstR = { collider.x, collider.y, collider.w, collider.h };
}
void BColliderComponent::Update(){

  if (tag != "terrain"){
    collider.x = static_cast<int>(transform->position.x);
    collider.y = static_cast<int>(transform->position.y);
    collider.w = transform->iWidth * transform->iScale;
    collider.h = transform->iHeight * transform->iScale;
  }

  dstR.x = collider.x - BGame::camera.x;
  dstR.y = collider.y - BGame::camera.y;
}
void BColliderComponent::Draw(){
  BTextureManager::Draw(tex, srcR, dstR, SDL_FLIP_NONE);
}
SDL_Rect BColliderComponent::GetCollider(){
  return collider;
}