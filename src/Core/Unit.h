#ifndef UNIT__H
#define UNIT__H

struct Stats {
    int Fortitude;
    int Endurance;
    int Brawn;
    int Deftness;
    int Wisdom;
    int Craftiness;
};

const int BASE_UNIT_HEALTH = 200;
const int MAX_STAT = 50;

enum class Status {DEFAULT, DEAD, POSION, BURN, FREEZE};
class Unit {
    public:
        Unit();
        ~Unit();
        int GetID() { return id; }
        void SetName(const char* n) { name = n; }

        Status GetStatus() { return status; }
        void SetStatus(Status sts) { status = sts; }

        void SetHealth(int healthval);
        int GetHealth() { return current_health; }

        void SetPower(int staminaval);
        int GetPower() { return current_stamina; }

        void SetStamina(int powerval);
        int GetStamina() { return current_power; }
        
    private:
        int id;
        const char* name;
        int max_health;
        int current_health;
        int max_stamina;
        int current_stamina;
        int max_power;
        int current_power;
        Status status;
        Stats stats;

        int CalculateMaxHealth();
};

#endif