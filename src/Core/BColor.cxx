#include "BColor.h"

SDL_Color Color(Uint8 r, Uint8 g, Uint8 b, Uint8 a) {
   SDL_Color col = {r,g,b,a};
   return col;
}
