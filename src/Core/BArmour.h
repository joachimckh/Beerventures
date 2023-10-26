#ifndef BARMOUR__H
#define BARMOUR__H

class BArmour : BObject {
    public:
        BArmour();
        ~BArmour();
        
        void SetHead(BObject obj) { head = obj; }
        void SetShoulder(BObject obj) { shoulder = obj; }
        void SetTorso(BObject obj) { torso = obj; }
        void SetLegs(BObject obj) { legs = obj; }
        void SetArms(BObject obj) { arms = obj; }
        void SetHands(BObject obj) { hands = obj; }
        void SetFeet(BObject obj) { feet = obj; }
        
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