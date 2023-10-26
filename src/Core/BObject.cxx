#include "BObject.h"
#include "../Game/BTextureManager.h"

BObject::BObject(const char* textureSheet, int x, int y) : 
objTexture(BTextureManager::LoadTexture(textureSheet)),
xPos(x),
yPos(y)
{}

BObject::~BObject()
{}

BObject::BObject(BObject &other){
  xPos = other.xPos;
  yPos = other.yPos;
  objTexture = other.objTexture;
}

void BObject::Update(){
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
void BObject::Render(){
  SDL_RenderCopy(BGame::Renderer,objTexture, &srcRect, &destRect);
}