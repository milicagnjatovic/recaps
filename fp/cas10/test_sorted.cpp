#include <iostream>
#include <string>
#include <numeric>
#include <vector>

using namespace std;

// funkcianlni objekti, imaju call implementirano, tj ()
// class ManjeOd {
//     int x;
//     ManjeOd(int v){
//         x = v;
//     }
//     operator()(int other){
//         x<other;
//     }
// };

// m4 = ManjeOd(4)
// m4(10)
// less_than(10)

template<typename T>
int test_sorted(const T& xs){
    return std::inner_product(
        cbegin(xs), cend(xs)-1,
        cbegin(xs)+1 , // ne treba kraj drugog niza jer duzina mora biti jednaka duzini prvog
        true, // pocetna vrednost da su sortirani
        [](const bool& x, const bool& y){ return x && y; }, // objedinjavanje
        [](const auto& x, const auto& y) {return x<=y;} // spajanje elemenata
    );
}

int main(int argc, char* argv[]){
    string text = "Hooloovooo";
    cout << text << " : " << test_sorted(text) << std::endl;

    string text2 = "abcd";
    cout << text << " : " << test_sorted(text2) << std::endl;

    vector<double> numbers{-1.0,2.36,65.4,65.4, 65.4,-1.0,0.0,5.4};
    cout << "numbers : " << test_sorted(numbers) << std::endl;

    vector<int> numbers2{1,2,3,4};
    cout << "numbers2 : " << test_sorted(numbers2) << std::endl;

    return 0;
}