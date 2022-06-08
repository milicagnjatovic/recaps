#include <iostream>
#include <vector>
#include <functional>
#include <range/v3/view.hpp>
// #include "range-v3-0.11.0/include/range/v3/view.hpp"

// COMPILE WITH
// g++ -o exe for_each.cpp -I ../range-v3-0.11.0/include/

using namespace ranges::v3;
using namespace std::placeholders;

int main(int argc, char *argv[])
{
    std::vector<int> xs = { -1, -3, -5, 1, 3, 5};

    // Pravimo pogled koji ce se sastojati od tekstualnih
    // reprezentacija apsolutnih vrednosti brojeva iz xs,
    // ali samo onih za koje vazi da je x < 6
    auto results =
        xs | view::transform(abs) // kao std transform, samo nam ne trebaju iteratori
        //    | view:filter([](const auto x) {return x<6})
           | view::filter(std::bind(std::less<>(), _1, 6)) // _1, prvi argument ima vrednost 6
           | view::transform([] (auto value) { return std::to_string(value); });

    // slozenost je O(1) jer nismo nista odradili, ovo je samo view
    // a kad prolazimo onda ima neku vecu zlozenost
    // ne racuna se dok se ne trazi element
    // saki put kad prolazimo izvrsava se opet, a u javi bi se sacuvalo nakn prvog prolaza

    for (auto value: results) {
        std::cout << value << std::endl;
    }

    return 0;
}