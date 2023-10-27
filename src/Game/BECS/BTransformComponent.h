#ifndef __BPOSITION_COMPONENTS_H
#define __BPOSITION_COMPONENTS_H

#include "BECS.h"
#include "BVector2D.h"



struct BTransformComponent : public BComponent{

    BVector2D position;
    BVector2D velocity;

    int fSpeed = 3;

    int iHeight = 64;
    int iWidth = 64;
    int iScale = 1;



    BTransformComponent();
    BTransformComponent(int sc);
    BTransformComponent(float x, float y);
    BTransformComponent(float x, float y, int h, int w, int sc);


    void Init() override;
    void Update() override;

};







#endif /* __BPOSITION_COMPONENTS_H */