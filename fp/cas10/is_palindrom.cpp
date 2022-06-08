#include <iostream>
#include <string>
#include <numeric>
#include <vector>

using namespace std;

template<typename T>
bool is_palindrome(const T& xs){
    // primenimo neku funkciju na parove elemenata, a onda te rezulatate objedinimo
    return std::equal(xs.cbegin(), xs.cend(), xs.crbegin());
}

int main(int argc, char* argv[]){
    string text = "Hooloovooo";
    cout << text << " : " << is_palindrome(text) << std::endl;

    string text1 = "12321";
    cout << text1 << " : " << is_palindrome(text1) << std::endl;

    vector<double> numbers{-1.0,2.36,65.4,65.4, 65.4,-1.0,0.0,5.4};
    cout << "numbers : " << is_palindrome(numbers) << std::endl;

    vector<double> numbers1{1,2,3,2,1};
    cout << "numbers : " << is_palindrome(numbers1) << std::endl;

    return 0;
}