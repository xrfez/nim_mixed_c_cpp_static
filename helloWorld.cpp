// C++ program to display "Hello World"
 
// Header file for input output functions
#include <iostream>
using namespace std;
 
// Dont mangle the name
extern "C" int HelloWorld()
{
    // prints hello world
    cout << "Hello World! from cpp";
 
    return 0;
}