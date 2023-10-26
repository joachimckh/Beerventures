#ifndef __BPLAYER_H__
#define __BPLAYER_H__

#include "BUnit.h"
#include "BInventory.h"

class BPlayer : public BUnit {
    public:
        BPlayer(const char* textureSheet, int x, int y);
        BPlayer(BPlayer &other);
        ~BPlayer();
        

        void Render() override;
        void SetPower(int staminaval);
        int GetPower() { return current_stamina; }
        int GetMaximumPower() { return max_stamina; }

        void SetStamina(int powerval);
        int GetStamina() { return current_power; }
        int GetMaximumStamina() { return max_power; }

        BInventory bag;

    private:
        int max_stamina;
        int current_stamina;
        int max_power;
        int current_power;
        int CalculateMaxStamina();
        int CalculateMaxPower();
};
#endif