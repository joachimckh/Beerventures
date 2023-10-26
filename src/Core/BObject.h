#ifndef __BOBJECT_H__
#define __BOBJECT_H__

#include "../Game/BGame.h"
#include "BColor.h"

class BObject {
    public:
        BObject(const char* textureSheet, int x, int y);
        BObject(BObject &other);
        ~BObject();

        virtual void Update();
        virtual void Render();

    protected:
        SDL_Texture*  objTexture;
        SDL_Rect      srcRect, destRect;

        int xPos;
        int yPos;  

};

#endif 