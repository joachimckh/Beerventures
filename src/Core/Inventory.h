#ifndef INVENTORY__H
#define INVENTORY__H

#include "Object.h"
#include <vector>

const int BASE_INVENTORY_SIZE = 10;

class Inventory {
    public:
        Inventory();
        ~Inventory();

        Object* GetItem(int itemSlot);
        void AddItem(Object* obj);

        void IncreaseInventorySize(int sizeIncrease);

    private:
        std::vector<Object*> items;
};

#endif

