#ifndef BOBJECT__H
#define BOBJECT__H

class BObject {
    public:
        BObject();
        ~BObject();
        int GetID() { return id; }

    private:
        int id;        

};

#endif 