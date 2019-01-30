#ifndef ITEM_TEMPLATE_H_
#define ITEM_TEMPLATE_H_

using namespace std;
/*
 This class is the parent class
 */
class ITEM {
public:
    string name;  // name of the item (used for sorting)
	string message;  // info of the item (used for printing)
	int quantity;  // quantity of the item
	ITEM() : name(""), message(""), quantity(0) {}
	~ITEM() {}
	ITEM(string name) : name(name), quantity(0) {}
	virtual bool Process_Purchase(istream &cin, ostream &cout) {return true;}
	virtual int Get_Cost() const {return 0;}
    /*
     Purpose:compare for sorting
     Input:rhs-the other object of ITEM
     Output:true if this object is prior to the other
     */
	bool operator<(const ITEM& rhs) {
		return this->name < rhs.name;
	}
	virtual void Print(ostream &out) const {}
};
/*
 Purpose:operator overriden
 Input:out-an object of ostream;rhs-an object of ITEM
 Output:out-an object of ostream
 */
ostream & operator<<(ostream &out, const ITEM &rhs) {
	rhs.Print(out);
	return out;
}
/*
 Purpose:compare two objects of ITEM
 Input:lhs-an object of ITEM;rhs-an object of ITEM
 Output:true if lhs is prior to rhs
 */
bool compare_pointers_to_items(ITEM *lhs, ITEM *rhs) {
	return *lhs < *rhs;
}

/*
 This class is a child class of ITEM
 */
class BALLS : public ITEM {
public:
    int unitPrice;  // number of pieces of eight per item
    /*
     Purpose:constructor of the class BALLS
     */
    BALLS() : ITEM() {
        unitPrice = 0;
    }
    /*
     Purpose:garbage collector of the class BALLS
     */
    ~BALLS() {}
    /*
     Purpose:complete the transaction
     Input:cin-an object of istream;cout-an object of ostream
     Output:true if the transaction is completed
     */
    virtual bool Process_Purchase(istream &cin, ostream &cout) {
        // prompt
        cout<<"\nCannon Balls come in three sizes:"<<endl;
        cout<<"  1) Small     6 pieces of eight per Cannon Ball"<<endl;
        cout<<"  2) Medium   15 pieces of eight per Cannon Ball"<<endl;
        cout<<"  3) Large    52 pieces of eight per Cannon Ball"<<endl;
        cout<<"What size would you like? ";
        int size;  // small, medium, large
        cin >> size;
        if (size != 1 && size != 2 && size != 3) {  // error checking
            return false;
        }
        cout<<"How many would you like? ";
        cin >> quantity;  // number of cannon balls
        if (quantity <= 0)  // error checking
            return false;
        switch (size) {
            case 1: {  // small
                unitPrice = 6;
                name = "Cannon Ball 1";
                if (quantity == 1)
                    message = "Small Cannon Ball";
                else
                    message = "Small Cannon Balls";
            } break;
            case 2: {  // medium
                unitPrice = 15;
                name = "Cannon Ball 2";
                if (quantity == 1)
                    message = "Medium Cannon Ball";
                else
                    message = "Medium Cannon Balls";
            } break;
            case 3: {  // large
                unitPrice = 52;
                name = "Cannon Ball 3";
                if (quantity == 1)
                    message = "Large Cannon Ball";
                else
                    message = "Large Cannon Balls";
            } break;
            default:
                break;
        }
        cout<<"Happy hunting!"<<endl;
        return true;
    }
    /*
     Purpose:print the information
     Input:out-an object of ostream
     Output:out-an object of ostream
     */
    virtual void Print(ostream &out) const {
        out<<quantity<<" "<<message;
    }
    /*
     Purpose:get the cost of one transaction
     Input:none
     output:the number of cost
     */
    virtual int Get_Cost() const {
        return unitPrice * quantity;
    }
};
/*
 This class is a child class of ITEM
 */
class RUM : public ITEM {
public:
    int unitPrice;  // number of pieces of eight per item
    /*
     Purpose:constructor of the class BALLS
     */
    RUM() : ITEM() {
        unitPrice = 0;
    }
    /*
     Purpose:garbage collector of the class BALLS
     */
    ~RUM() {};
    /*
     Purpose:complete the transaction
     Input:cin-an object of istream;cout-an object of ostream
     Output:true if the transaction is completed
     */
    virtual bool Process_Purchase(istream &cin, ostream &cout) {
        // prompt
        cout<<"\nWe have three different qualities of Rum in stock:"<<endl;
        cout<<"  1) Swill     1 pieces of eight per barrel"<<endl;
        cout<<"  2) Grog      5 pieces of eight per barrel"<<endl;
        cout<<"  3) Fine Rum 19 pieces of eight per bareel"<<endl;
        cout<<"What kind would you like? ";
        int size;  // small, medium, large
        cin >> size;
        if (size != 1 && size != 2 && size != 3) {  // error checking
            return false;
        }
        cout<<"Gotta keep the crew happy!"<<endl;
        cout<<"The officers will love it!"<<endl;
        cout<<"Nothing but the best for the captain!"<<endl;
        cout<<"How many barrels would you like? ";
        cin >> quantity;  // number of barrels
        if (quantity <= 0)
            return false;
        switch (size) {
            case 1: {  // small
                unitPrice = 1;
                name = "Rum 1";
                if (quantity == 1)
                    message = "Barrel of Swill";
                else
                    message = "Barrels of Swill";
            } break;
            case 2: {  // medium
                unitPrice = 5;
                name = "Rum 2";
                if (quantity == 1)
                    message = "Barrel of Grog";
                else
                    message = "Barrels of Grog";
            } break;
            case 3: {  // large
                unitPrice = 19;
                name = "Rum 3";
                if (quantity == 1)
                    message = "Barrel of Fine Rum";
                else
                    message = "Barrels of Fine Rum";
            } break;
            default:
                break;
        }
        return true;
    }
    /*
     Purpose:print the information
     Input:out-an object of ostream
     Output:out-an object of ostream
     */
    virtual void Print(ostream &out) const {
        out<<quantity<<" "<<message;
    }
    /*
     Purpose:get the cost of one transaction
     Input:none
     output:the number of cost
     */
    virtual int Get_Cost() const {
        return unitPrice * quantity;
    }
};
/*
 This class is a child class of ITEM
 */
class LIMES : public ITEM {
public:
    /*
     Purpose:constructor of the class BALLS
     */
    LIMES() : ITEM() {
        message = "Limes";
        name = "Limes";
    }
    /*
     Purpose:garbage collector of the class BALLS
     */
    ~LIMES() {};
    /*
     Purpose:complete the transaction
     Input:cin-an object of istream;cout-an object of ostream
     Output:true if the transaction is completed
     */
    virtual bool Process_Purchase(istream &cin, ostream &cout) {
        // prompt
        cout<<"\nLimes arrr delicious. They're on sale for 7 pieces of eight per dozen."<<endl;
        cout<<"How many dozen would you like? ";
        cin>>quantity;  // number of dozens
        quantity = quantity * 12;
        if (quantity <= 0)
            return false;
        return true;
    }
    /*
     Purpose:print the information
     Input:out-an object of ostream
     Output:out-an object of ostream
     */
    virtual void Print(ostream &out) const {
        out<<quantity<<" "<<message;
    }
    /*
     Purpose:get the cost of one transaction
     Input:none
     output:the number of cost
     */
    virtual int Get_Cost() const {
        return 7 * quantity / 12;
    }
};
/*
 This class is a child class of ITEM
 */
class APPAREL : public ITEM {
public:
    int unitPrice;  // number of pieces of eight per item
    /*
     Purpose:constructor of the class BALLS
     */
    APPAREL() : ITEM() {
        quantity = 1;
    }
    /*
     Purpose:garbage collector of the class BALLS
     */
    ~APPAREL() {};
    /*
     Purpose:complete the transaction
     Input:cin-an object of istream;cout-an object of ostream
     Output:true if the transaction is completed
     */
    virtual bool Process_Purchase(istream &cin, ostream &cout) {
        // prompt
        cout<<"\nThat looks like a rough injury.";
        cout<<"  1) Eyepatch  4 pieces of eight"<<endl;
        cout<<"  2) Pegleg   13 pieces of eight"<<endl;
        cout<<"  3) Hook     43 pieces of eight"<<endl;
        cout<<"You're going to need a ... ";
        int size;  // Eyepatch, Pegleg, Hook
        cin>>size;
        if (size != 1 && size != 2 && size != 3) {  // error checking
            return false;
        }
        switch (size) {
            case 1:  // Eyepatch
                unitPrice = 4;
                name = "Apparel 1";
                message = "Eyepatch";
                break;
            case 2:  // Pegleg
                unitPrice = 13;
                name = "Apparel 3";
                message = "Pegleg";
                cout<<"We'll be getting more crutches in stock early next week."<<endl;
                break;
            case 3:  // Hook
                unitPrice = 43;
                name = "Apparel 2";
                message = "Hook";
                break;
            default:
                break;
        }
        return true;
    }
    /*
     Purpose:print the information
     Input:out-an object of ostream
     Output:out-an object of ostream
     */
    virtual void Print(ostream &out) const {
        out<<quantity<<" "<<message;
    }
    /*
     Purpose:get the cost of one transaction
     Input:none
     output:the number of cost
     */
    virtual int Get_Cost() const {
        return unitPrice * quantity;
    }
};
#endif
