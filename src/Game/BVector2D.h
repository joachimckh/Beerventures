#ifndef __BVECTOR_2D_H
#define __BVECTOR_2D_H

#include <iostream>

struct BVector2D{
    float x;
    float y;

    BVector2D();
    BVector2D(float x, float y);

    BVector2D& Add(const BVector2D& vec);
    BVector2D& Subtract(const BVector2D& vec);
    BVector2D& Multiply(const BVector2D& vec);
    BVector2D& Divide(const BVector2D& vec);

    friend BVector2D& operator+(BVector2D& v1, const BVector2D& v2);
    friend BVector2D& operator-(BVector2D& v1, const BVector2D& v2);
    friend BVector2D& operator*(BVector2D& v1, const BVector2D& v2);
    friend BVector2D& operator+(BVector2D& v1, const BVector2D& v2);

    BVector2D& operator+=(const BVector2D& vec);
    BVector2D& operator-=(const BVector2D& vec);
    BVector2D& operator*=(const BVector2D& vec);
    BVector2D& operator/=(const BVector2D& vec);

    friend std::ostream& operator<<(std::ostream& stream, const BVector2D& vec);
};

#endif /* __BVECTOR_2D_H */