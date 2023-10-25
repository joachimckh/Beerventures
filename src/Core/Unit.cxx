#include "Unit.h"
#include <cmath>

Unit::Unit(){
    max_health = CalculateMaxHealth();
}
Unit::~Unit(){

}
void Unit::SetHealth(int healthval){
    if(healthval <= 0) {
        current_health = 0;
        status = Status::DEAD;
    }
    if(healthval > max_health) current_health = max_health;
    return;
}
void Unit::SetStamina(int staminaval){
    if(staminaval <= 0) current_stamina = 0;
    if(staminaval > max_stamina) current_stamina = max_stamina;
    return;
}
void Unit::SetPower(int powerval){
    if(powerval <= 0) current_power = 0;
    if(powerval > max_power) current_power = max_power;
    return;
}
int Unit::CalculateMaxHealth(){
    return BASE_UNIT_HEALTH + 200*atan(-0.1*MAX_STAT) + 200*atan(0.1*(stats.Fortitude - MAX_STAT));
}