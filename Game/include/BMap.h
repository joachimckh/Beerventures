#ifndef __BMAP_H__
#define __BMAP_H__

#include "BGame.h"


class BMap{

  public:
    BMap();
    ~BMap();


    void LoadMap(int arr[20][25]);
    void DrawMap();

  private:

    SDL_Rect          src, dst;
    SDL_Texture*      sDirt;
    SDL_Texture*      sGrass;
    SDL_Texture*      sWater;

    int map[20][25];

};
#endif /* BMAP */
