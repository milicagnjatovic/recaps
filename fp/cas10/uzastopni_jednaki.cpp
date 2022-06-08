#include <iostream>
#include <string>
#include <numeric>
#include <vector>

using namespace std;

template<typename T>
int count_adj_equals(const T& xs){
    // primenimo neku funkciju na parove elemenata, a onda te rezulatate objedinimo
    return std::inner_product(
        cbegin(xs), cend(xs)-1,
        cbegin(xs)+1 , // ne treba kraj drugog niza jer duzina mora biti jednaka duzini prvog
        0, // pocetna vrednost, 0 elemenata 
        [](const int x, const int y){ return x+y; }, // objedinjavanje
        [](const auto& x, const auto& y) {return x==y ? 1 : 0;} // spajanje elemenata
    );
}

int main(int argc, char* argv[]){
    string text = "Hooloovooo";
    cout << text << " : " << count_adj_equals(text) << std::endl;

    vector<double> numbers{-1.0,2.36,65.4,65.4, 65.4,-1.0,0.0,5.4};
    cout << "numbers : " << count_adj_equals(numbers) << std::endl;

    return 0;
}