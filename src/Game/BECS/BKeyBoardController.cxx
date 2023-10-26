#include "BKeyBoardController.h"


void BKeyBoardController::Init(){
  transform = &entity->GetComponent<BTransformComponent>();
}
void BKeyBoardController::Update(){
  if (BGame::event.type == SDL_KEYDOWN){
    switch(BGame::event.key.keysym.sym){
      case SDLK_w:
        transform->velocity.y = -1;
        break;
      case SDLK_a:
        transform->velocity.x = -1;
        break;
      case SDLK_d:
        transform->velocity.x = 1;
        break;
      case SDLK_s:
        transform->velocity.y = 1;
        break;
      default:
        break;
    }
  }
  if (BGame::event.type == SDL_KEYUP){
    switch(BGame::event.key.keysym.sym){
      case SDLK_w:
        transform->velocity.y = 0;
        break;
      case SDLK_a:
        transform->velocity.x = 0;
        break;
      case SDLK_d:
        transform->velocity.x = 0;
        break;
      case SDLK_s:
        transform->velocity.y = 0;
        break;
      default:
        break;
    }
  }
}