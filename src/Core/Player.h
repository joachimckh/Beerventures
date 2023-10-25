#ifndef PLAYER__H
#define PLAYER__H

#include "Unit.h"
#include "Inventory.h"
#include "Armour.h"
#include "Weapon.h"

class Player : Unit {
    public:
        Player();
        ~Player();

        void Update();

    private:
        Inventory bag;
        Weapon weapon;
        Armour armour;
};
#endif PLAYER__H