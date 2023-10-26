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


using ComponentID = std::size_t;


inline ComponentID GetComponentTypeID(){
  static ComponentID lastID{0};
  return lastID++;
}

template <typename T> inline ComponentID GetComponentTypeID() noexcept{
  static ComponentID typeID = GetComponentTypeID();
  return typeID;
}

constexpr std::size_t maxComponents{32};

using ComponentBitSet = std::bitset<maxComponents>;
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
    bool fActive{true};
    std::vector<std::unique_ptr<BComponent>> components;

    ComponentArray componentArray;
    ComponentBitSet componentBitset; 


  public:
    void Update();
    void Draw();
    bool IsActive() const { return fActive;}
    void Destroy(){ fActive = false; }

    template <typename T> bool hasComponent() const;
    
    template <typename T, typename... TArgs> T& AddComponents(TArgs&&... mArgs){
      T* c{new T{std::forward<TArgs>(mArgs)...}};
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

  public:

    void Update();
    void Draw();
    void Refresh();
    
    BEntity& AddEntity(){
      BEntity* e = new BEntity();
      std::unique_ptr<BEntity> uPtr{ e };

      vEntities.emplace_back(std::move(uPtr));
      return *e;
    }
};


#endif /* __BECS_H__ */