#ifndef BINVENTORY__H
#define BINVENTORY__H

#include "BObject.h"
#include <vector>

const int BASE_INVENTORY_SIZE = 10;

class BInventory {
    public:
        BInventory();
        ~BInventory();

        BObject* GetItem(int itemSlot);
        void AddItem(BObject* obj);

        void IncreaseInventorySize(int sizeIncrease);

    private:
        std::vector<BObject*> items;
};

#endif

