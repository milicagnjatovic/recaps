#include <iostream>
#include <range/v3/view.hpp>

using namespace ranges::v3;

int main(int argc, char** argv){
    std::string s;
    std::cin >> s;

    auto res = s 
    | view::group_by(std::equal_to<>())
    | view::transform([](const auto & vec){
        auto b = std::begin(vec);
        auto e = std::end(vec);
        auto num = std::distance(b,e);
        return std::make_pair(*b, num);})
    | view::transform([](const auto &p){
        // return p.second + ":" + p.first;
        return std::to_string(p.second) + p.first;
    })
    | to_vector;

//   std::copy(std::begin(words), std::end(words),
            // std::ostream_iterator<std::string>(std::cout, "\n"));
// auto combined = std::accumulate(begin(list), end(list), 
            // std::string(), std::plus<>());


    std::copy(std::begin(res), std::end(res),
        std::ostream_iterator<std::string>(std::cout, ""));
    // for(auto i : res)
    //     std::cout << i;

    return 0;
}