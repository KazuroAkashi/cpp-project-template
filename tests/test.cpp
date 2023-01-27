#include <catch2/catch_test_macros.hpp>

#include "hello.h"

TEST_CASE("HELLO constant is defined and proper") {
    std::string text = HELLO;

    REQUIRE(text == "Hello!");

}