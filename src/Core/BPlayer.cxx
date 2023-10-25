#include "BPlayer.h"

BPlayer::BPlayer() : Unit(){}
BPlayer::~BPlayer(){}

void BPlayer::SetStamina(int staminaval){
    if(staminaval <= 0) current_stamina = 0;
    if(staminaval > max_stamina) current_stamina = max_stamina;
    return;
}
void BPlayer::SetPower(int powerval){
    if(powerval <= 0) current_power = 0;
    if(powerval > max_power) current_power = max_power;
    return;
}
int BPlayer::CalculateMaxStamina(){
    return floor(BASE_UNIT_STAMINA + BASE_UNIT_STAMINA*atan(-0.1*MAX_STAT) + BASE_UNIT_STAMINA*atan(0.1*(stats.Endurance - MAX_STAT)));
}
int BPlayer::CalculateMaxPower(){
    int x;
    switch(powertype){
        case PowerType::Rage:
            x = stats.Brawn;
            break;
        case PowerType::Grace:
            x = stats.Deftness;
            break;
        case PowerType::Mana:
            x = stats.Wisdom;
            break;
        case PowerType::Cunning:
            x = stats.Craftiness;
            break;
        case PowerType::Drankness:
            x = stats.Tolerance;
            break;
        default:
            x = stats.Endurance;
    }
    return floor(BASE_UNIT_POWER + BASE_UNIT_POWER*atan(-0.1*MAX_STAT) + BASE_UNIT_POWER*atan(0.1*(x - MAX_STAT)));
}