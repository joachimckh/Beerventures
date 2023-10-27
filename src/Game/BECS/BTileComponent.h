#ifndef __BTILE_COMPONENT_H__
#define __BTILE_COMPONENT_H__

#include "BECS.h"
#include "BTransformComponent.h"
#include "BSpriteComponent.h"
#include "SDL.h"

class BTileComponent : public BComponent{
  public:
    BTransformComponent     *transform;
    BSpriteComponent        *sprite;

    SDL_Rect                tileRect;
    int                     tileID;
    const char*                   path;

    BTileComponent() = default;
    BTileComponent(int x, int y, int w, int h, int id);


    void Init() override;




};


#endif /* __BTILE_COMPONENT_H__ */