// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./Fizzbuzz.sol";

contract FizzbuzzTest is DSTest {
    Fizzbuzz fizzbuzz;

    function setUp() public {
        fizzbuzz = new Fizzbuzz();
    }

    function test_returns_fizz_for_multiples_of_3() public {
        assertEq(fizzbuzz.fizzbuzz(6), "fizz");
    }

    function test_returns_buzz_for_multiples_of_5() public {
        assertEq(fizzbuzz.fizzbuzz(10), "buzz");
    }

    function test_returns_fizzbuzz_for_multiples_of_3_and_5() public {
        assertEq(fizzbuzz.fizzbuzz(15), "fizzbuzz");
    }

    function test_returns_failed_response_on_not_multiples_of_3_or_5() public {
        assertEq(fizzbuzz.fizzbuzz(1), "not a fizz buzz! :(");
    }
}
