#include "BTileComponent.h"


BTileComponent::BTileComponent(int x, int y, int w, int h, int id)
{
  tileRect.x = static_cast<float>(x);
  tileRect.y = static_cast<float>(y);
  tileRect.w = w;
  tileRect.h = h;

  tileID = id;

  switch(tileID){
    case 0:
      path = "../src/assets/water.png";
      break;
    case 1:
      path = "../src/assets/dirt.png";
      break;
    case 2:
      path = "../src/assets/grass.png";
      break;
    default:
      break;
  }
}

void BTileComponent::Init(){
  entity->AddComponent<BTransformComponent>(
    tileRect.x,
    tileRect.y,
    tileRect.w,
    tileRect.h, 1);
  transform = &entity->GetComponent<BTransformComponent>();

  entity->AddComponent<BSpriteComponent>(path);
  sprite = &entity->GetComponent<BSpriteComponent>();
}
