#include "BPlayer.h"

BPlayer::BPlayer(const char* textureSheet, int x, int y) : BUnit(textureSheet,x,y){
    max_stamina = CalculateMaxStamina();
    max_power = CalculateMaxPower();
    current_stamina = max_stamina;
    current_power = max_power;
}
BPlayer::~BPlayer(){}
BPlayer::BPlayer(BPlayer &other) : BUnit(other){
    max_stamina = other.max_stamina;
    current_stamina = other.current_stamina;
    max_power = other.max_power;
    current_power = other.current_power;
}
void BPlayer::Render(){
  SDL_RenderCopy(BGame::Renderer,objTexture, &srcRect, &destRect);
}

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
    switch(powerType){
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