#include "BTileComponent.h"


BTileComponent::BTileComponent(int srcX, int srcY, int yPos, int xPos, int tsize, int tscale, const char* path)
{
  texture = BTextureManager::LoadTexture(path);

  position.x = xPos;
  position.y = yPos;

  srcRect.x = srcX;
  srcRect.y = srcY;
  srcRect.w = tsize;
  srcRect.h = tsize;

  dstRect.x = xPos;
  dstRect.y = yPos;
  dstRect.w = tsize * tscale;
  dstRect.h = tsize * tscale;
}
BTileComponent::~BTileComponent(){
  SDL_DestroyTexture(texture);
}
void BTileComponent::Draw(){
  BTextureManager::Draw(texture,srcRect,dstRect, SDL_FLIP_NONE);
}
void BTileComponent::Update(){
  dstRect.x = position.x - BGame::camera.x;
  dstRect.y = position.y - BGame::camera.y;

}
