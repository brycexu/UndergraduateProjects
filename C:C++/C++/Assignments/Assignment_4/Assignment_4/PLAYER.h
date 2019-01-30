#ifndef PLAYER_hpp
#define PLAYER_hpp

#include <iostream>
#include <vector>
#include "CAVE.h"

using namespace std;

class PLAYER {
    int x; // row
    int y; // column
    enum FACING { // four conditions of facing
        left, right, up, down
    };
    FACING facing; // facing direction
    enum OWN { // two conditions of owning
        yes, no
    };
    OWN has_arrow; // whether owning an arrow
    OWN has_gold; // whether owning a gold
    enum STATUS { // four conditions of status
        alive, eaten, fallen, escaped
    };
    STATUS status; // player's status
    
public:
    PLAYER();   // constructor
    ~PLAYER();  // trash collector
    vector<int> Get_Position();     // get the current position
    string Get_Facing();            // get the facing direction
    void Turn_Left();               // turn left
    void Turn_Right();              // turn right
    vector<int> Get_Next_Square();  // get the next position
    void Move_Forward();            // move forward
    bool Pickup_Gold(CAVE &cave);   // pick up the gold
    bool Shoot_Arrow(CAVE &cave);   // shoot the arrow
    void Climb_Ladder();            // climb the ladder and escape
    bool Has_Arrow();               // whether the player has an arrow
    bool Has_Gold();                // whether the player has a gold
    bool Update_Player_Status(CAVE &cave);  // update the player's status
    bool Escaped();                 // whether the player has escaped
    bool Eaten();                   // whether the player has been eaten
    bool Fell();                    // whether the player has fallen
};
#endif /* PLAYER_hpp */
