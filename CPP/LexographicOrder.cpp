#include <iostream>
using namespace std;

int main()
{
    // cerner_2^5_2018
    string input[10], temp;

    cout << "Enter 5 words: " << endl;
    for(int i = 0; i < 5; ++i)
    {
      getline(cin, input[i]);
    }

    for(int i = 0; i < 9; ++i)
       for( int j = i+1; j < 10; ++j)
       {
          if(input[i] > input[j])
          {
            temp = input[i];
            input[i] = input[j];
            input[j] = temp;
          }
    }

    cout << "Lexicographical order: " << endl;

    for(int i = 0; i < 10; ++i)
    {
       cout << input[i] << endl;
    }
    return 0;
}
