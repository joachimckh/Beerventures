#ifndef OBJECT__H
#define OBJECT__H

class Object {
    public:
        Object();
        ~Object();
        int GetID() { return id; }

    private:
        int id;        

};

#endif 