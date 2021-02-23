#include <iostream>

using namespace std;

class stack{
    char *symbols;
    int stack_size;
    int top = -1;
    
    public:
    stack(int size){
        symbols = new char[size];
        stack_size = size;
    }

    bool isEmpty(){
    if (top == -1)
        return true;
    else 
        return false;
    }

    bool isFull(){
        if (top >= stack_size - 1)
            return true;
        else
            return false;
    }

    void push(char val){
        if (isFull()) 
            cout << "Stack overflow!" << endl;
        else{
            symbols[++top] = val;
        }
    }

    char pop(){
        if (isEmpty())
            cout << "Stack underflow!" << endl;
        else{
            return symbols[top--];
        }
    }

    char StackTop(){
        if (isEmpty())
            cout << "Stack underflow!" << endl;
        else 
            return symbols[top];
    }

    void StackSize(){
        cout << "Stack Size: " << top + 1 << endl;
    } 
};


void balanced(string s){
    int size = s.length();
    stack characters(size);
    char ch;

    for (int i = 0; i < size; i++){
        if (s[i] == '[' || s[i] == '(' || s[i] == '{'){
            characters.push(s[i]);
        }
        else if (s[i] == '}'){
            ch = characters.pop();
            if (ch != '{'){
                cout << "Expression not balanced!" << endl;
                return ;
            }
        }
        else if (s[i] == ']'){
            ch = characters.pop();
            if (ch != '['){
                cout << "Expression not balanced!" << endl;
                return ;
            }
        }
        else if (s[i] == ')'){
            ch = characters.pop();
            if (ch != '('){
                cout << "Expression not balanced!" << endl;
                return ;
            }
        }
    }
    cout << "Balanced!" << endl;
}

int main(){
    string s;
    cin >> s;
    balanced(s);
    return 0;
}