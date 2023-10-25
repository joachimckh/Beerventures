#include "BTextureManager.h"


SDL_Texture* BTextureManager::LoadTexture(const char* texture){
  SDL_Surface *tmpSurface = IMG_Load(texture);
  SDL_Texture* tex = SDL_CreateTextureFromSurface(BGame::Renderer,tmpSurface);
  SDL_FreeSurface(tmpSurface);

  return tex;
}

void BTextureManager::Draw(SDL_Texture *tex, SDL_Rect src, SDL_Rect dst){
  SDL_RenderCopy(BGame::Renderer, tex, &src, &dst);
}