#include <iostream>

using namespace std;

class stack{
    char *symbols;
    int stack_size;
    
    public:
    int top = -1;
    stack(int size){
        size += 1;
        symbols = new char[size];
        stack_size = size-1;
        this->push('e');
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

int precedence(char ch){
    if (ch == '^') return 3;
    else if ((ch == '*')||(ch == '/')) return 2;
    else if ((ch == '+')||(ch == '-')) return 1;
    else return -1;
}

void postfix(string s){
    stack characters(s.length());
    string post = "";
    char temp;

    for (int i = 0; i < s.length(); i++){
        if ((s[i] >= 'a' && s[i] <= 'z') || (s[i] >= 'A' && s[i] <= 'Z')){
            post += s[i];
        }
        else if (s[i] == '('){
            characters.push(s[i]);
        }
        else if (s[i] == ')'){
            while(characters.StackTop() != '(' && characters.StackTop() != 'e'){
                post += characters.pop();
            }
            if (characters.StackTop() == '('){
                temp = characters.pop();
            }
        }
        else{
            while((precedence(s[i]) <= precedence(characters.StackTop())) && characters.StackTop() != 'e'){
                post += characters.pop();
            }
            characters.push(s[i]);
        }
    }
    while (characters.StackTop() != 'e'){
        post += characters.pop();
    }
    
    cout << "Postfix: " << post << endl;
}


int main(){
    cout << "Infix: ";
    string s;
    cin >> s;
    postfix(s);
    return 0;
}