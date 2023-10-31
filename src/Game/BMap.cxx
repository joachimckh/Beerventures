#include "BMap.h"
#include "BGame.h"
#include <fstream>
#include "BECS.h"
#include "BComponents.h"

extern BManager manager;

BMap::BMap(const char* mfp, int ms, int ts) :
mapFilePath(mfp),
mapScale(ms),
tileSize(ts)
{
  scaledSize = ms * ts;
}
void BMap::LoadMap(std::string path, int sizeX, int sizeY){

  char c;
  std::fstream mapFile;
  mapFile.open(path);

  int srcX, srcY;

  for (int y{0}; y<sizeY; y++){
    for (int x{0}; x<sizeX; x++){
      mapFile.get(c);
      srcY = atoi(&c) * tileSize;
      mapFile.get(c);
      srcX = atoi(&c) * tileSize;
      AddTile(srcX, srcY, x * scaledSize, y * scaledSize);
      mapFile.ignore();
    }
  }

  mapFile.ignore();

  for (int y{0}; y<sizeY; y++){
    for (int x{0}; x<sizeX; x++){
      mapFile.get(c);
      if (c == '0'){
        auto &tcol(manager.AddEntity());
        tcol.AddComponent<BColliderComponent>("terrain", x * scaledSize, y * scaledSize, scaledSize);
        tcol.AddGroup(BGame::groupColliders);
      }
      mapFile.ignore();
    }
  }

  mapFile.close();
}
void BMap::AddTile(int srcX, int srcY, int xPos, int yPos){
  auto& tile{manager.AddEntity()};
  tile.AddComponent<BTileComponent>(srcX, srcY, xPos, yPos, tileSize, mapScale, mapFilePath);
  tile.AddGroup(BGame::groupMap);
}
