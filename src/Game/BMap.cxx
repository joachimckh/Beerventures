#include "BMap.h"
#include "BTextureManager.h"

int lvl1[20][25] = {
  {0,0,0,1,1,1,2,2,2,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,1,1,1,1,2,2,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,1,1,1,1,2,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
};

BMap::BMap() :
sDirt{BTextureManager::LoadTexture("assets/dirt.png")},
sGrass{BTextureManager::LoadTexture("assets/grass.png")},
sWater{BTextureManager::LoadTexture("assets/water.png")}
{
  LoadMap(lvl1);

  src.x = src.y = 0;
  src.h = src.w = BGame::gResolution;
  dst.x = dst.y = 0;
  dst.h = dst.w = BGame::gResolution;
}
BMap::~BMap()
{}
void BMap::LoadMap(int arr[20][25]){
  for (int i{0}; i<20; i++){
    for (int j{0}; j<25; j++){
      map[i][j] = arr[i][j];
    }
  }
}
void BMap::DrawMap(){
  int type{0};

  // row;col
  for (int i{0}; i<20; i++){
    for (int j{0}; j<25; j++){
      type = map[i][j];

      dst.x = j * BGame::gResolution;
      dst.y = i * BGame::gResolution;
      switch(type){
        case 0:
          BTextureManager::Draw(sWater,src,dst);
          break;
        case 1:
          BTextureManager::Draw(sGrass,src,dst);
          break;
        case 2:
          BTextureManager::Draw(sDirt,src,dst);
          break;
        default:
          break;
      }

    }
  }
}