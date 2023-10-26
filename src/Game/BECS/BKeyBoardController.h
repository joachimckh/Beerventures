#ifndef __BKEYBOARD_CONTROLLER_H
#define __BKEYBOARD_CONTROLLER_H


#include "BGame.h"
#include "BECS.h"
#include "BComponents.h"

class BKeyBoardController : public BComponent{
  public:
    BTransformComponent *transform;

    void Init() override;
    void Update() override;


};


#endif /* __BKEYBOARD_CONTROLLER_H */