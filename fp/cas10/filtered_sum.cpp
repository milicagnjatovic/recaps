
#include <iostream>
#include <vector>
#include <range/v3/numeric/accumulate.hpp>
#include <range/v3/view.hpp>

// g++ -o exe filtered_sum.cpp -I ../range-v3-0.11.0/include/

using namespace ranges::v3;

template <typename Predicate, typename Collection, typename Accumulator>
Accumulator filtered_sum(Predicate predicate, Accumulator init, const Collection &xs)
{
    // xs | view::filter(predicate), filtrirani eementi
    return accumulate(xs | view::filter(predicate), init);
}

int main(int argc, char *argv[])
{
    std::vector<int> xs = { -1, -3, -5, 1, 3, 5};

    std::cout << filtered_sum(
                    [] (auto val) { return val > 0; },
                    0,
                    xs)
              << std::endl;

    return 0;
}