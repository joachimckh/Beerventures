#include "BInventory.h"

BInventory::BInventory(){
    items.resize(BASE_INVENTORY_SIZE);
}
BInventory::~BInventory(){}

BObject* BInventory::GetItem(int itemSlot){
    if(items[itemSlot]) return items[itemSlot];
}
void BInventory::AddItem(BObject* obj){
    auto it = std::find(items.begin(),items.end(),nullptr);
    items[it-items.begin()] = obj;
}
void BInventory::IncreaseInventorySize(int sizeIncrease){
    if(sizeIncrease<0) return;
    items.resize(items.size()+sizeIncrease);
    return;
}