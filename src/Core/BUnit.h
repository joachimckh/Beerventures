#ifndef __BUNIT_H__
#define __BUNIT_H__

struct Stats {
    int Fortitude;
    int Endurance;
    int Brawn;
    int Deftness;
    int Wisdom;
    int Craftiness;
    int Tolerance;
};

const int BASE_UNIT_HEALTH = 200;
const int BASE_UNIT_STAMINA = 100;
const int BASE_UNIT_POWER = 20;
const int MAX_STAT = 50;

#include "BObject.h"

enum class Status {DEFAULT, DEAD, POSION, BURN, FREEZE};
enum PowerType {Rage, Grace, Mana, Cunning, Drankness};
class BUnit : public BObject {
    public:
        BUnit(const char* textureSheet, int x, int y);
        ~BUnit();
        BUnit(BUnit &other);
        int GetID() { return id; }
        void SetName(const char* n) { name = n; }

        void Render();

        Status GetStatus() { return status; }
        void SetStatus(Status sts) { status = sts; }

        void SetHealth(int healthval);
        int GetHealth() { return current_health; }
        int GetMaximumHealth() { return max_health; }

        PowerType GetPowerType() { return powerType; }
        Stats GetStats() { return stats; }
        
    protected:
        int id;
        const char* name;
        int max_health;
        int current_health;
        Status status;
        PowerType powerType;
        Stats stats;

        int CalculateMaxHealth();
        void HealthRegen();
        void StatusUpdate();
        void SetDefaultStats();
        
        void RenderBar(int x, int y, int w, int h, float Percent, SDL_Color FGColor, SDL_Color BGColor);
};

#endif