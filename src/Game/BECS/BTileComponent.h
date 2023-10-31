#ifndef __BTILE_COMPONENT_H__
#define __BTILE_COMPONENT_H__

#include "BECS.h"
#include "SDL.h"
#include "BTextureManager.h"
#include "BVector2D.h"

class BTileComponent : public BComponent{
  public:
    SDL_Texture*    texture;
    SDL_Rect        srcRect,dstRect;
    BVector2D       position;


    BTileComponent() = default;
    BTileComponent(int srcX, int srcY, int yPos, int xPos, int tsize, int tscale, const char* path);
    ~BTileComponent();

    void Draw() override;
    void Update() override;

};


#endif /* __BTILE_COMPONENT_H__ */