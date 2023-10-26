#include "BSpriteComponent.h"
#include "BTextureManager.h"

BSpriteComponent::BSpriteComponent(const char* path){
  SetTex(path);
}
void BSpriteComponent::Init(){
  transform = &entity->GetComponent<BTransformComponent>();

  srcRect.x = srcRect.y = 0;
  srcRect.w = srcRect.h = BGame::gResolution;

  dstRect.w = srcRect.w * 2;
  dstRect.h = srcRect.h * 2;
}
void BSpriteComponent::Update(){
  dstRect.x = static_cast<int>(transform->position.x);
  dstRect.y = static_cast<int>(transform->position.y);
}
void BSpriteComponent::Draw(){
  BTextureManager::Draw(texture, srcRect, dstRect);
}
void BSpriteComponent::SetTex(const char* path){
  texture = BTextureManager::LoadTexture(path);
}