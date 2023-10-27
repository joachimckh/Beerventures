#include "BMap.h"
#include "BGame.h"
#include <fstream>

BMap::BMap()
{}
void BMap::LoadMap(std::string path, int sizeX, int sizeY){

  char tile;
  std::fstream mapFile;
  mapFile.open(path);

  for (int y{0}; y<sizeY; y++){
    for (int x{0}; x<sizeX; x++){
      mapFile.get(tile);
      BGame::AddTile(atoi(&tile), x*BGame::gResolution, y*BGame::gResolution);
      mapFile.ignore();
    }
  }


  mapFile.close();

  
}