#ifndef __BMAP_H__
#define __BMAP_H__

#include <string>

class BMap{

  public:
    BMap(const char* mfp, int ms, int ts);
    ~BMap();


    void LoadMap(std::string path, int sizeX, int sizeY);
    void AddTile(int srcX, int srcY, int xPos, int yPos);
  
  private:

    const char* mapFilePath;
    int mapScale;
    int tileSize;
    int scaledSize;

};
#endif /* BMAP */
