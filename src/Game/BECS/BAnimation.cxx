#include "BAnimation.h"

BAnimation::BAnimation() :
index{0},
frames{0},
speed{0}
{}
BAnimation::BAnimation(int ind, int fra, int sp) :
index{ind},
frames{fra},
speed{sp}
{}