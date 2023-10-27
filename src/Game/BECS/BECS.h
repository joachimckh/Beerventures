#ifndef __BECS_H__
#define __BECS_H__

#include <iostream>
#include <vector>
#include <memory>
#include <algorithm>
#include <bitset>
#include <array>



class BComponent;
class BEntity;
class BManager;


using ComponentID = std::size_t;
using Group = std::size_t;

inline ComponentID GetNewComponentTypeID(){ 
  static ComponentID lastID = 0u;
  return lastID++;
}

template <typename T> inline ComponentID GetComponentTypeID() noexcept{
  static ComponentID typeID = GetNewComponentTypeID();
  return typeID;
}

constexpr std::size_t maxComponents{32};
constexpr std::size_t maxGroups{32}; //32 layers

using ComponentBitSet = std::bitset<maxComponents>;
using GroupBitSet = std::bitset<maxGroups>;

using ComponentArray = std::array<BComponent*, maxComponents>;


class BComponent{

  public:
    BEntity* entity;

    virtual void Init(){}
    virtual void Update(){}
    virtual void Draw(){}

    virtual ~BComponent(){}
};

class BEntity{
  private:
    BManager& manager;
    bool fActive{true};
    std::vector<std::unique_ptr<BComponent>> components;

    ComponentArray componentArray;
    ComponentBitSet componentBitset; 
    GroupBitSet groupBitset;


  public:
    BEntity(BManager& mManager);

    void Update();
    void Draw();
    bool IsActive() const { return fActive;}
    void Destroy(){ fActive = false; }

    bool HasGroup(Group mGroup);
    void AddGroup(Group mGroup);
    void DelGroup(Group mGroup);

    template <typename T> bool HasComponent() const{
      return componentBitset[GetComponentTypeID<T>()];
    }
    
    template <typename T, typename... TArgs> T& AddComponent(TArgs&&... mArgs){
      T* c = new T(std::forward<TArgs>(mArgs)...);
      c->entity = this;
      std::unique_ptr<BComponent> uPtr{c};
      components.emplace_back(std::move(uPtr));

      componentArray[GetComponentTypeID<T>()] = c;
      componentBitset[GetComponentTypeID<T>()] = true;

      c->Init();

      return *c;
    }
    template <typename T> T& GetComponent() const{
      auto ptr(componentArray[GetComponentTypeID<T>()]);
      return *static_cast<T*>(ptr);
    }
};

class BManager{
  private:
    std::vector<std::unique_ptr<BEntity>> vEntities;
    std::array<std::vector<BEntity*>, maxGroups> groupedEntities; 
  public:

    void Update();
    void Draw();
    void Refresh();

    void AddToGroup(BEntity* mEntity, Group mGroup);

    std::vector<BEntity*>& GetGroup(Group mGroup);
    
    BEntity& AddEntity(){
      BEntity* e = new BEntity(*this);
      std::unique_ptr<BEntity> uPtr{ e };

      vEntities.emplace_back(std::move(uPtr));
      return *e;
    }
};


#endif /* __BECS_H__ */