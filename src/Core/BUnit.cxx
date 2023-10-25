#include "BUnit.h"
#include <cmath>

BUnit::BUnit(){
    max_health = CalculateMaxHealth();
}
BUnit::~BUnit(){

}
void BUnit::Update() {
    HealthRegen();
    StatusUpdate();
}
void BUnit::SetHealth(int healthval){
    if(healthval <= 0) {
        current_health = 0;
        status = Status::DEAD;
    }
    else if(healthval > max_health) {
        current_health = max_health;
    }
    else { 
        current_health = healthval;
    }
    return;
}
int BUnit::CalculateMaxHealth(){
    return floor(BASE_UNIT_HEALTH + BASE_UNIT_HEALTH*atan(-0.1*MAX_STAT) + BASE_UNIT_HEALTH*atan(0.1*(stats.Fortitude - MAX_STAT)));
}
void BUnit::HealthRegen(){
    int health = current_health;
    health += floor(0.1*stats.Fortitude);
    SetHealth(health);
}
void BUnit::StatusUpdate(){
    if(status == Status::BURN){
        int health = current_health;
        health-=10;
        SetHealth(health);
    }
    if(status == Status::POSION){
        int health = current_health;
        health-=5;
        SetHealth(health);
    }
}