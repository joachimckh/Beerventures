#ifndef __BPOSITION_COMPONENTS_H
#define __BPOSITION_COMPONENTS_H

#include "BECS.h"
#include "BVector2D.h"



struct BTransformComponent : public BComponent{

    BVector2D position;
    BVector2D velocity;

    int fSpeed = 3;


    BTransformComponent();
    BTransformComponent(int x, int y);


    void Init() override;
    void Update() override;

};







#endif /* __BPOSITION_COMPONENTS_H */