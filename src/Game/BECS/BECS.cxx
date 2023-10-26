#include "BECS.h"

void BEntity::Update(){
  for (auto& c : components) c->Update();
}
void BEntity::Draw(){
  for (auto& c : components) c->Draw();
}
template <typename T> bool BEntity::hasComponent() const{
  return componentBitset[GetComponentTypeID<T>];
}
// template <typename T> T& BEntity::GetComponent() const{
//       auto ptr(componentArray[GetComponentTypeID<T>()]);
//       return *static_cast<T*>(ptr);
// }



void BManager::Update(){
  for (auto& e : vEntities) e->Update();
}
void BManager::Draw(){
  for (auto&e : vEntities) e->Draw();
}
void BManager::Refresh(){
  vEntities.erase(std::remove_if(std::begin(vEntities), std::end(vEntities), 
    [](const std::unique_ptr<BEntity> &mEntity){
      return !mEntity->IsActive();
    }),
    std::end(vEntities));
}
