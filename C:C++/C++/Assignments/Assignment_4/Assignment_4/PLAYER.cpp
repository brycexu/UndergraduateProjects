#include "PLAYER.h"

PLAYER::PLAYER() {
    // Purpose:constructor
    // Input:none
    // Output:none
    x = 1; // set the initial x position to 1
    y = 1; // set the initial y position to 1
    facing = right; // set the initial facing direction to right
    has_arrow = yes; // initially has an arrow
    has_gold = no; // initially has a gold
    status = alive; // initially is alive
}

PLAYER::~PLAYER() {
    // Purpose:trash collector
    // Input:none
    // Output:none
}

vector<int> PLAYER::Get_Position() {
    // Purpose:get the current position
    // Input:none
    // Output:a vector containing the current position
    vector<int> position = {x,y};
    return position;
}

string PLAYER::Get_Facing() {
    // Purpose:get the current facing direction
    // Input:none
    // Output:a string containing the current facing direction
    switch (facing) {
        case left:
            return "left";
            break;
        case right:
            return "right";
            break;
        case up:
            return "up";
            break;
        case down:
            return "down";
            break;
        default:
            return "";
            break;
    }
}

void PLAYER::Turn_Left() {
    // Purpose:turn left
    // Input:none
    // Output:none
    switch (facing) {
        case left:
            facing = down;
            break;
        case right:
            facing = up;
            break;
        case up:
            facing = left;
            break;
        case down:
            facing = right;
            break;
        default:
            break;
    }
}

void PLAYER::Turn_Right() {
    // Purpose:turn right
    // Input:none
    // Output:none
    switch (facing) {
        case left:
            facing = up;
            break;
        case right:
            facing = down;
            break;
        case up:
            facing = right;
            break;
        case down:
            facing = left;
            break;
        default:
            break;
    }
}

vector<int> PLAYER::Get_Next_Square() {
    // Purpose:get the next position
    // Input:none
    // Output:a vector containing the next position
    vector<int> next = Get_Position();
    switch (facing) {
        case left:
            next[1] = next[1] - 1;
            break;
        case right:
            next[1] = next[1] + 1;
            break;
        case up:
            next[0] = next[0] - 1;
            break;
        case down:
            next[0] = next[0] + 1;
            break;
        default:
            break;
    }
    return next;
}

void PLAYER::Move_Forward() {
    // Purpose:move forward
    // Input:none
    // Output:none
    // get the next position
    vector<int> forward = Get_Next_Square();
    // update x and y
    x = forward[0];
    y = forward[1];
}

bool PLAYER::Pickup_Gold(CAVE &cave) {
    // Purpose:pick up the gold
    // Input:the cave data structure
    // Output:true if the player successfully picked up the gold
    //        false otherwise
    vector<int> current = Get_Position();
    // if there is a gold in the current position, pick it up
    if (cave.Square_Contains_Gold(current)) {
        cave.Remove_Gold(current);
        has_gold = yes; // set the has_gold status to yes
        return true;
    }
    return false;
}

bool PLAYER::Shoot_Arrow(CAVE &cave) {
    // Purpose:shoot the arrow
    // Input:the cave data structure
    // Output:true if the player successfully shot the dragon
    //        false otherwise
    if (has_arrow == no)
        return false; // if the player does not have an arrow, return false
    has_arrow = no;
    vector<int> runner = Get_Position();
    bool got_it = false; // determine whether the arrow kills the dragon
    switch (facing) {
        case left:
            runner[1] = runner[1] - 1;
            // arrow will fly forward until it hits the wall
            while (cave.Is_Square_Valid(runner)) {
                if (cave.Shoot_Square(runner)) {
                    got_it = true;
                    break;
                }
                runner[1] = runner[1] - 1;
            }
            break;
        case right:
            runner[1] = runner[1] + 1;
            // arrow will fly forward until it hits the wall
            while (cave.Is_Square_Valid(runner)) {
                if (cave.Shoot_Square(runner)) {
                    got_it = true;
                    break;
                }
                runner[1] = runner[1] + 1;
            }
            break;
        case up:
            runner[0] = runner[0] - 1;
            // arrow will fly forward until it hits the wall
            while (cave.Is_Square_Valid(runner)) {
                if (cave.Shoot_Square(runner)) {
                    got_it = true;
                    break;
                }
                runner[0] = runner[0] - 1;
            }
            break;
        case down:
            runner[0] = runner[0] + 1;
            // arrow will fly forward until it hits the wall
            while (cave.Is_Square_Valid(runner)) {
                if (cave.Shoot_Square(runner)) {
                    got_it = true;
                    break;
                }
                runner[0] = runner[0] + 1;
            }
            break;
        default:
            break;
    }
    return got_it;
}

void PLAYER::Climb_Ladder() {
    // Purpose:climb the ladder and escape
    // Input:none
    // Output:none
    status = escaped;
}

bool PLAYER::Has_Arrow() {
    // Purpose:determine whether the player has the arrow
    // Input:none
    // Output:true if the player has the arrow, false otherwise
    if (has_arrow == yes)
        return true;
    return false;
}

bool PLAYER::Has_Gold() {
    // Purpose:determine whether the player has the gold
    // Input:none
    // Output:true if the player has the gold, false otherwise
    if (has_gold == yes)
        return true;
    return false;
}

bool PLAYER::Update_Player_Status(CAVE &cave) {
    // Purpose:update the player's status
    // Input:none
    // Output:true if the player is still alive
    vector<int> current = Get_Position();
    if (cave.Square_Contains_Living_Wumpus(current)) {
        status = eaten; // the player is eaten by the wumpus
        return false;
    } else if (cave.Square_Contains_Pit(current)) {
        status = fallen; // the player fell into a pit
        return false;
    } else {
        return true; // the player is alive
    }
}

bool PLAYER::Escaped() {
    // Purpose:determine whether the player escaped the cave
    // Input:none
    // Output:true if the player escaped the cave
    return status == escaped;
}

bool PLAYER::Eaten() {
    // Purpose:determine whether the player is eaten by the wumpus
    // Input:none
    // Output:true if the player is eaten by the wumpus
    return status == eaten;
}

bool PLAYER::Fell() {
    // Purpose:determine whether the player fell into a pit
    // Input:none
    // Output:true if the player has fallen into a pit
    return status == fallen;
}






