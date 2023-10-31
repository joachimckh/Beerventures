#include "BSpriteComponent.h"

BSpriteComponent::BSpriteComponent(const char* path){
  SetTex(path);
}
BSpriteComponent::BSpriteComponent(const char* path, bool IsAnimated){
  fAnimated = IsAnimated;

  BAnimation idle_up = BAnimation(0, 4, 100);
  BAnimation idle_down = BAnimation(6, 5, 1000);
  BAnimation walk_up = BAnimation(8, 8, 100);
  BAnimation walk_left = BAnimation(9, 8, 100);
  BAnimation walk_down = BAnimation(10, 8, 100);
  BAnimation walk_right = BAnimation(11, 8, 100);

  animations.emplace("Idle", idle_up);
  animations.emplace("Idle_down", idle_down);
  animations.emplace("Walk_left", walk_left);
  animations.emplace("Walk_right", walk_right);
  animations.emplace("Walk_up", walk_up);
  animations.emplace("Walk_down", walk_down);

  Play("Idle");

  SetTex(path);

}
BSpriteComponent::~BSpriteComponent(){
  SDL_DestroyTexture(texture);
}
void BSpriteComponent::Init(){
  transform = &entity->GetComponent<BTransformComponent>();


  srcRect.x = 0;
  srcRect.y = 0;
  srcRect.w = transform->iWidth;
  srcRect.h = transform->iHeight;
}
void BSpriteComponent::Update(){

  if(fAnimated){
    srcRect.x = srcRect.w * static_cast<int>( (SDL_GetTicks() / speed) % frames );
  }

  srcRect.y = animIndex * transform->iHeight;

  dstRect.x = static_cast<int>(transform->position.x) - BGame::camera.x;
  dstRect.y = static_cast<int>(transform->position.y) - BGame::camera.y;

  dstRect.w = transform->iWidth * transform->iScale;
  dstRect.h = transform->iHeight * transform->iScale;
}
void BSpriteComponent::Draw(){
  BTextureManager::Draw(texture, srcRect, dstRect);
  // BTextureManager::Draw(texture, srcRect, dstRect,spriteFlip);
}
void BSpriteComponent::SetTex(const char* path){
  texture = BTextureManager::LoadTexture(path);
}

void BSpriteComponent::Play(const char* animName){
  frames = animations[animName].frames;
  animIndex = animations[animName].index;
  speed = animations[animName].speed;
}
