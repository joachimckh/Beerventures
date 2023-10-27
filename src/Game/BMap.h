#ifndef __BMAP_H__
#define __BMAP_H__

#include <string>

class BMap{

  public:
    BMap();
    ~BMap();


    static void LoadMap(std::string path, int sizeX, int sizeY);
    


};
#endif /* BMAP */
