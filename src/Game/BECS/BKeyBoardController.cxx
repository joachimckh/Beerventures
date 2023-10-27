#include "BKeyBoardController.h"


void BKeyBoardController::Init(){
  transform = &entity->GetComponent<BTransformComponent>();
  sprite = &entity->GetComponent<BSpriteComponent>();

}
void BKeyBoardController::Update(){
  if (BGame::event.type == SDL_KEYDOWN){
    switch(BGame::event.key.keysym.sym){
      case SDLK_w:
        transform->velocity.y = -1;
        sprite->Play("Walk_up");
        break;
      case SDLK_a:
        transform->velocity.x = -1;
        sprite->Play("Walk_right");
        // sprite->spriteFlip = SDL_FLIP_HORIZONTAL;
        break;
      case SDLK_d:
        transform->velocity.x = 1;
        sprite->Play("Walk_right");
        break;
      case SDLK_s:
        transform->velocity.y = 1;
        sprite->Play("Walk_down");
        break;
      default:
        break;
    }
  }
  if (BGame::event.type == SDL_KEYUP){
    switch(BGame::event.key.keysym.sym){
      case SDLK_w:
        transform->velocity.y = 0;
        sprite->Play("Idle");
        break;
      case SDLK_a:
        transform->velocity.x = 0;
        sprite->Play("Idle_down");
        // sprite->spriteFlip = SDL_FLIP_NONE;
        break;
      case SDLK_d:
        transform->velocity.x = 0;
        sprite->Play("Idle_down");
        break;
      case SDLK_s:
        transform->velocity.y = 0;
        sprite->Play("Idle_down");
        break;
      default:
        break;
    }
  }
}