#ifndef BARMOUR__H
#define BARMOUR__H

class BArmour : Object {
    public:
        BArmour();
        ~BArmour();
        
        void SetHead(Object obj) { head = obj; }
        void SetShoulder(Object obj) { shoulder = obj; }
        void SetTorso(Object obj) { torso = obj; }
        void SetLegs(Object obj) { legs = obj; }
        void SetArms(Object obj) { arms = obj; }
        void SetHands(Object obj) { hands = obj; }
        void SetFeet(Object obj) { feet = obj; }
        
    private:
        BObject head;
        BObject shoulder;
        BObject torso;
        BObject legs;
        BObject arms;
        BObject hands;
        BObject feet;

};

#endif