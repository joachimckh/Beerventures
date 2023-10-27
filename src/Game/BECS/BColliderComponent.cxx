#include "BColliderComponent.h"


BColliderComponent::BColliderComponent(std::string t) :
tag{t}
{}
void BColliderComponent::Init(){
  if (!entity->HasComponent<BTransformComponent>()){
    entity->AddComponent<BTransformComponent>();
  }

  transform = &entity->GetComponent<BTransformComponent>();

  BGame::colliders.push_back(this);
}
void BColliderComponent::Update(){
  collider.x = static_cast<int>(transform->position.x);
  collider.y = static_cast<int>(transform->position.y);
  collider.w = transform->iWidth * transform->iScale;
  collider.h = transform->iHeight * transform->iScale;
}
SDL_Rect BColliderComponent::GetCollider(){
  return collider;
}