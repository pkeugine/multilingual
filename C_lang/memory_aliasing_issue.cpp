#include <iostream>
#include <vector>
using namespace std;

// THIS PROGRAM WILL NOT THROW AN ERROR
// BUT IT WON'T SHOW ANY RESULTS EITHER
int main() {
    vector<string> v;
    v.push_back("Hello, ");
    
    string &x = v[0];

    v.push_back("World!");

    cout << x;
}