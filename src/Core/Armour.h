#ifndef ARMOUR__H
#define ARMOUR__H

class Armour : Object {
    public:
        Armour();
        ~Armour();
        
        void SetHead(Object obj) { head = obj; }
        void SetShoulder(Object obj) { shoulder = obj; }
        void SetTorso(Object obj) { torso = obj; }
        void SetLegs(Object obj) { legs = obj; }
        void SetArms(Object obj) { arms = obj; }
        void SetHands(Object obj) { hands = obj; }
        void SetFeet(Object obj) { feet = obj; }
        
    private:
        Object head;
        Object shoulder;
        Object torso;
        Object legs;
        Object arms;
        Object hands;
        Object feet;

};

#endif