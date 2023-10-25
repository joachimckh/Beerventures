#include "BGameObject.h"
#include "BTextureManager.h"

BGameObject::BGameObject(const char* textureSheet, int x, int y) :
objTexture(BTextureManager::LoadTexture(textureSheet)),
xPos(x),
yPos(y)
{}
BGameObject::~BGameObject()
{}
void BGameObject::Update(){

  xPos++;
  yPos++;

  srcRect.h = 32;
  srcRect.w = 32;
  srcRect.x = 0;
  srcRect.y = 0;

  destRect.x = xPos;
  destRect.y = yPos;
  destRect.h = srcRect.h * 2;
  destRect.w = srcRect.w * 2;
  

}
void BGameObject::Render(){
  SDL_RenderCopy(BGame::Renderer,objTexture, &srcRect, &destRect);
}
