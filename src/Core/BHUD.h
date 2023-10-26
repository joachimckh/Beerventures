#ifndef __BHUD_H__
#define __BHUD_H__

#include "BPlayer.h"
#include "BColor.h"
#include "../Game/BGame.h"

class BHUD {
    public:
        BHUD(int width, int height, BPlayer &player);
        ~BHUD();

        void Render();

    private:
        BPlayer playerChar;

        int windowHeight;
        int windowWidth;
        void RenderBars();
        void RenderBar(int x, int y, int w, int h, float Percent, SDL_Color FGColor, SDL_Color BGColor);

        void RenderStats();
        void RenderMapInfo();
        void RenderMinimap();
        void RenderEquipment();

        int GetBarWidth(int baseWidth, int stat);
        int GetBarWidth(int baseWidth, PowerType type);

        int barHeight;
        int hpBaseWidth;
        int stamBaseWidth;
        int powerBaseWidth;
};

#endif