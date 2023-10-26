#ifndef __BCOLOR_H__
#define __BCOLOR_H__

#include <SDL.h>

SDL_Color Color(Uint8 r, Uint8 g, Uint8 b, Uint8 a);

const SDL_Color BARCOLOR = Color(40,40,40,255);
const SDL_Color HPCOLOR = Color(255,0,0,255);
const SDL_Color STAMCOLOR = Color(0,255,0,255);
const SDL_Color POWERCOLOR = Color(0,0,255,255);
const SDL_Color TEXTCOLOR = Color(255,255,255,255);

#endif 