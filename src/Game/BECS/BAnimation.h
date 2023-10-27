#ifndef __BANIMATION_H__
#define __BANIMATION_H__



struct BAnimation{

  int index;
  int frames;
  int speed;

  BAnimation();
  BAnimation(int ind, int fra, int sp);

};


#endif /* __BANIMATION_H__ */