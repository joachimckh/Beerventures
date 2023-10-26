#include "BUnit.h"
#include <cmath>

BUnit::BUnit(const char* textureSheet, int x, int y) : 
BObject(textureSheet,x,y)
{   
    SetDefaultStats();
    max_health = CalculateMaxHealth();
    current_health = max_health;
}
BUnit::~BUnit()
{}
BUnit::BUnit(BUnit &other) : BObject(other) {
        id = other.id;
        name = other.name;
        max_health = other.max_health;
        current_health = other.current_health;
        status = other.status;
        powerType = other.powerType;
        stats = other.stats;
}

void BUnit::Render(){
  SDL_RenderCopy(BGame::Renderer,objTexture, &srcRect, &destRect);
  SDL_Color fg = Color(255,0,0,255);
  SDL_Color bg = Color(40,40,40,255);
  RenderBar(destRect.x + destRect.w,destRect.y,-destRect.w,-floor(0.15*destRect.h),floor(current_health*1./max_health),fg,bg);
}

void BUnit::RenderBar(int x, int y, int w, int h, float Percent, SDL_Color FGColor, SDL_Color BGColor) {
   Percent = Percent > 1.f ? 1.f : Percent < 0.f ? 0.f : Percent;
   SDL_Color old;
   SDL_GetRenderDrawColor(BGame::Renderer, &old.r, &old.g, &old.g, &old.a);
   SDL_Rect bgrect = { x, y, w, h };
   SDL_SetRenderDrawColor(BGame::Renderer, BGColor.r, BGColor.g, BGColor.b, BGColor.a);
   SDL_RenderFillRect(BGame::Renderer, &bgrect);
   SDL_SetRenderDrawColor(BGame::Renderer, FGColor.r, FGColor.g, FGColor.b, FGColor.a);
   int pw = (int)((float)w * Percent);
   int px = x + (w - pw);
   SDL_Rect fgrect = { px, y, pw, h };
   SDL_RenderFillRect(BGame::Renderer, &fgrect);
   SDL_SetRenderDrawColor(BGame::Renderer, old.r, old.g, old.b, old.a);
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
void BUnit::SetDefaultStats(){
    stats.Fortitude = 5;
    stats.Endurance = 5;
    stats.Brawn = 1;
    stats.Deftness = 1;
    stats.Wisdom = 1;
    stats.Craftiness = 1;
}