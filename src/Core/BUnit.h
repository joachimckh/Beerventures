#ifndef BUNIT__H
#define BUNIT__H

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

enum class Status {DEFAULT, DEAD, POSION, BURN, FREEZE};
enum PowerType {Rage, Grace, Mana, Cunning, Drankness};
class BUnit {
    public:
        BUnit();
        ~BUnit();
        int GetID() { return id; }
        void SetName(const char* n) { name = n; }

        virtual void Update();

        Status GetStatus() { return status; }
        void SetStatus(Status sts) { status = sts; }

        void SetHealth(int healthval);
        int GetHealth() { return current_health; }
        
    private:
        int id;
        const char* name;
        int max_health;
        int current_health;
        Status status;
        PowerType powertype;
        Stats stats;

        int CalculateMaxHealth();
        int CalculateMaxStamina();
        int CalculateMaxPower();
        void HealthRegen();
        void StatusUpdate();
};

#endif