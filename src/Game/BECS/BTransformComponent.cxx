#include "BTransformComponent.h"

BTransformComponent::BTransformComponent()
{
  position.Zero();
}
BTransformComponent::BTransformComponent(int sc){
  position.Zero();
  iScale = sc;
}
BTransformComponent::BTransformComponent(float x, float y)
{
  position.x = x;
  position.y = y;
}
BTransformComponent::BTransformComponent(float x, float y, int h, int w, int sc){
  position.x = x;
  position.y = y;
  iHeight = h;
  iWidth = w;
  iScale = sc;
}
void BTransformComponent::Init(){
  velocity.Zero();
  
}
void BTransformComponent::Update(){
  position.x += velocity.x * fSpeed;
  position.y += velocity.y * fSpeed;
}
