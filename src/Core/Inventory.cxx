#include "Inventory.h"

Inventory::Inventory(){
    items.resize(BASE_INVENTORY_SIZE);
}
Inventory::~Inventory(){}

Object* Inventory::GetItem(int itemSlot){
    if(items[itemSlot]) return items[itemSlot];
}
void Inventory::AddItem(Object* obj){
    auto it = std::find(items.begin(),items.end(),nullptr);
    items[it-items.begin()] = obj;
}
void Inventory::IncreaseInventorySize(int sizeIncrease){
    if(sizeIncrease<0) return;
    items.resize(items.size()+sizeIncrease);
    return;
}