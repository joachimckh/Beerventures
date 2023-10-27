#include "BVector2D.h"


BVector2D::BVector2D() :
x{0.0f},
y{0.0f}
{}
BVector2D::BVector2D(float x, float y){
  this->x = x;
  this->y = y;
}
BVector2D& BVector2D::Add(const BVector2D& vec){
  this->x += vec.x;
  this->y += vec.y;

  return *this;
}
BVector2D& BVector2D::Subtract(const BVector2D& vec){
  this->x -= vec.x;
  this->y -= vec.y;

  return *this;
}
BVector2D& BVector2D::Multiply(const BVector2D& vec){
  this->x *= vec.x;
  this->y *= vec.y;

  return *this;
}
BVector2D& BVector2D::Divide(const BVector2D& vec){
  this->x /= vec.x;
  this->y /= vec.y;

  return *this;
}
BVector2D& operator+(BVector2D& v1, const BVector2D& v2){
  return v1.Add(v2);
}
BVector2D& operator-(BVector2D& v1, const BVector2D& v2){
  return v1.Subtract(v2);
}
BVector2D& operator*(BVector2D& v1, const BVector2D& v2){
  return v1.Multiply(v2);
}
BVector2D& operator/(BVector2D& v1, const BVector2D& v2){
  return v1.Divide(v2);
}
BVector2D& BVector2D::operator+=(const BVector2D& vec){
  return this->Add(vec);
}
BVector2D& BVector2D::operator-=(const BVector2D& vec){
  return this->Subtract(vec);
}
BVector2D& BVector2D::operator*=(const BVector2D& vec){
  return this->Multiply(vec);
}
BVector2D& BVector2D::operator/=(const BVector2D& vec){
  return this->Divide(vec);
}
BVector2D& BVector2D::operator*(const int& i){
  this->x *= i;
  this->y *= i;
  return *this;
}
BVector2D& BVector2D::Zero(){
  this->x = 0.0f;
  this->y = 0.0f;
  return *this;
}
std::ostream& operator<<(std::ostream& stream, const BVector2D& vec){
  stream << "Vec2D" << "(" << vec.x << "," << vec.y << "";
  return stream;
}
