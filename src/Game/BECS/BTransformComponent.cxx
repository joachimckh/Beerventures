#include "BTransformComponent.h"

BTransformComponent::BTransformComponent()
{
  position.x = 0.0f;
  position.y = 0.0f;
}
BTransformComponent::BTransformComponent(int x, int y)
{
  position.x = x;
  position.y = y;
}
void BTransformComponent::Init(){
  velocity.x = 0;
  velocity.y = 0;
  
}
void BTransformComponent::Update(){
  position.x += velocity.x * fSpeed;
  position.y += velocity.y * fSpeed;
}
