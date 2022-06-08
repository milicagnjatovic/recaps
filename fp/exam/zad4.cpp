// Zadatak 4
// Koristeći biblioteku range-v3, a bez upotrebe for, while, do-while petlji,
// komande goto, rekurzije, i algortima std::for_each implementirati sledeći
// zadatak:
// Napisati program koji sa standardnog ulaza čita reč po reč i
// briše uzastopna ponavljanja iste reči. Svaku reč ispisuje u novom redu.
//
// Za ulaz:
// thunder thunder
// thunder thunder
// i was caught
// in the middle of a railroad track
// thunder thunder
// thunder thunder
//
// Treba ispisati
//
// thunder
// i
// was
// caught
// in
// the
// middle
// of
// a
// railroad
// track
// thunder


#include <iostream>
#include <string>
#include <vector>
#include <functional>
#include <iterator>

#include <range/v3/view.hpp>
#include <range/v3/action.hpp>
#include <range/v3/algorithm.hpp>
// #include <range/v3/to_container.hpp>
#include <range/v3/range/conversion.hpp>
#include <range/v3/view/istream.hpp>


#include <cassert>

using namespace ranges::v3;
// namespace views = ranges::v3::view;
// namespace actions = ranges::v3::action;

// POCETAK STUDENTSKOG KODA

std::string to_lower(const std::string &s){
    return s | view::transform(tolower) | to<std::string>();
}

// KRAJ STUDENTSKOG KODA

int main(int argc, char **argv)
{
// POCETAK STUDENTSKOG KODA
    // std::vector<std::string> ws{"aa", "b", "c", "c","d","d"};
    std::vector<std::string> ws = istream_range<std::string>(std::cin) | to_vector;
    const auto words = 
        // istream_range<std::string>(std::cin)
        // | to_vector
        ws
        | view::transform(to_lower)
        | view::group_by(std::equal_to<>())
        | view::transform([](const auto &x) {return *std::begin(x);})
        | to_vector;


    std::copy(std::begin(words), std::end(words),
            std::ostream_iterator<std::string>(std::cout, "\n"));

    // for (auto x : words)
        // std::cout << x << std::endl;

// KRAJ STUDENTSKOG KODA
}