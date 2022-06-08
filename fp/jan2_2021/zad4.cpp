// 4. Range cpp - sa standardnog ulaza se ucitavaju reci, 
// zatim bez koriscenja petlji ispisati 3 najduze, zajedno sa duzinom

#include <iostream>
#include <iterator>
#include <string>
#include <range/v3/view.hpp>
#include <range/v3/action.hpp>
#include <range/v3/range/conversion.hpp>

using namespace ranges::v3;

std::pair<int, std::string> to_length_pairs(const std::string w){
    return std::make_pair<>(w.length(), w);
}

std::string pair_to_string(const std::pair<int, std::string> p){
    return std::to_string(p.first) + " : " + p.second;
}

int main(int argc, char** argv){
    std::vector<std::string> words = istream_range<std::string>(std::cin) | to_vector;
    
    auto res = words
        | view::transform(to_length_pairs)
        | to_vector
        | action::sort
        | action::reverse
        | action::take(3)
        // | view::transform([](auto &el){return el.second;})
        // | view::transform(pair_to_string)
        | to_vector;

    for (auto el: res)
        std::cout << el.first << " " << el.second << std::endl;
    
    return 0;
}