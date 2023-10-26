#include "BHUD.h"

BHUD::BHUD(int width, int height, BPlayer &player) : 
windowWidth(width),
windowHeight(height),
playerChar(player)
{
    barHeight = floor(0.02*windowHeight);
    hpBaseWidth = floor(0.15*windowWidth);
    stamBaseWidth = floor(0.1*windowWidth);
    powerBaseWidth = floor(0.1*windowWidth);
}
BHUD::~BHUD()
{
}
void BHUD::Render(){
  //RenderBars();
  RenderStats();
  //RenderMapInfo();
  //RenderMinimap();
  //RenderEquipment();
}
void BHUD::RenderBars(){
  float hpPercent = playerChar.GetHealth()*1./playerChar.GetMaximumHealth();
  float stamPercent = playerChar.GetStamina()*1./playerChar.GetMaximumStamina();
  float powerPercent = playerChar.GetPower()*1./playerChar.GetMaximumPower();

  int barPosY = floor(0.02*windowHeight);
  int barPosX = floor(0.02*windowWidth);
  RenderBar(barPosX, barPosY, GetBarWidth(hpBaseWidth,playerChar.GetStats().Fortitude), barHeight, hpPercent, HPCOLOR, BARCOLOR);
  RenderBar(barPosX, barPosY + (1+0.2)*barHeight, GetBarWidth(stamBaseWidth,playerChar.GetStats().Endurance), barHeight, stamPercent, STAMCOLOR, BARCOLOR);
  RenderBar(barPosX, barPosY + 2*(1+0.2)*barHeight, GetBarWidth(powerBaseWidth,playerChar.GetPowerType()), barHeight, powerPercent, POWERCOLOR, BARCOLOR);
}
void BHUD::RenderBar(int x, int y, int w, int h, float Percent, SDL_Color FGColor, SDL_Color BGColor) {
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
int BHUD::GetBarWidth(int baseWidth, int stat){
    return baseWidth + stat;
}
int BHUD::GetBarWidth(int baseWidth, PowerType type){
    switch(type){
        case Rage:
            return baseWidth + playerChar.GetStats().Brawn;
        case Grace:
            return baseWidth + playerChar.GetStats().Deftness;
        case Mana:
            return baseWidth + playerChar.GetStats().Wisdom;
        case Cunning:
            return baseWidth + playerChar.GetStats().Craftiness;
        case Drankness:
            return baseWidth + playerChar.GetStats().Tolerance;
        default:
            return baseWidth;
    }
}
void BHUD::RenderStats(){
  TTF_Font* Sans = TTF_OpenFont("arial.ttf", 25);
  SDL_Surface* surfaceMessage =
      TTF_RenderText_Solid(Sans, "Stats:", TEXTCOLOR); 

  // now you can convert it into a texture
  SDL_Texture* Message = SDL_CreateTextureFromSurface(BGame::Renderer, surfaceMessage);  
  
  SDL_Rect Message_rect; //create a rect
  Message_rect.x = 0;  //controls the rect's x coordinate 
  Message_rect.y = 0; // controls the rect's y coordinte
  Message_rect.w = 100; // controls the width of the rect
  Message_rect.h = 100; // controls the height of the rect
  SDL_RenderCopy(BGame::Renderer, Message, NULL, &Message_rect);

    return;
}

