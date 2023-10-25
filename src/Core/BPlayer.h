#ifndef BPLAYER__H
#define BPLAYER__H

#include "BUnit.h"
#include "BInventory.h"
#include "BArmour.h"
#include "BWeapon.h"B

enum PlayableClasses {BRAWLER, }
class BPlayer : Unit {
    public:
        BPlayer();
        ~BPlayer();

        void SetPower(int staminaval);
        int GetPower() { return current_stamina; }

        void SetStamina(int powerval);
        int GetStamina() { return current_power; }

    private:
        int max_stamina;
        int current_stamina;
        int max_power;
        int current_power;

        Inventory bag;
        Weapon weapon;
        Armour armour;
};
#endif PLAYER__H