#include "BECS.h"


BEntity::BEntity(BManager& mManager) : manager{mManager} 
{}
void BEntity::Update(){
  for (auto& c : components) c->Update();
}
void BEntity::Draw(){
  for (auto& c : components) c->Draw();
}
// template <typename T> bool BEntity::HasComponent() const
// template <typename T> T& BEntity::GetComponent() const{
//       auto ptr(componentArray[GetComponentTypeID<T>()]);
//       return *static_cast<T*>(ptr);
// }
bool BEntity::HasGroup(Group mGroup){
  return groupBitset[mGroup];
}
void BEntity::AddGroup(Group mGroup){
  groupBitset[mGroup] = true;
  manager.AddToGroup(this, mGroup);
}
void BEntity::DelGroup(Group mGroup){
  groupBitset[mGroup] = false;
}


void BManager::Update(){
  for (auto& e : vEntities) e->Update();
}
void BManager::Draw(){
  for (auto&e : vEntities) e->Draw();
}
void BManager::Refresh(){

  for (auto i{0u} ; i < maxGroups; i++){
    auto& v{groupedEntities[i]};
    v.erase(
      std::remove_if(std::begin(v),std::end(v),
       [i](BEntity* mEntity){
          return !mEntity->IsActive() || !mEntity->HasGroup(i);
       }
       ),
       std::end(v)
    );
  }

  vEntities.erase(std::remove_if(std::begin(vEntities), std::end(vEntities), 
    [](const std::unique_ptr<BEntity> &mEntity){
      return !mEntity->IsActive();
    }),
    std::end(vEntities));
}

void BManager::AddToGroup(BEntity* mEntity, Group mGroup){
  groupedEntities[mGroup].emplace_back(mEntity);
}

std::vector<BEntity*>& BManager::GetGroup(Group mGroup){
  return groupedEntities[mGroup];
}
