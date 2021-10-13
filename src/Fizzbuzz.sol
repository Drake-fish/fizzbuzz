// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

contract Fizzbuzz {
  function fizzbuzz(uint _num) public pure returns(string memory) {
      bool multipleOfThree = ((_num % 3) == 0);
      bool multipleOfFive = ((_num % 5) == 0);
      bool multipleOfFiveAndThree = ((_num % 15) == 0);
      
      if (multipleOfFiveAndThree) {
          return "fizzbuzz";
      } else if (multipleOfFive) {
          return "buzz";
      } else if (multipleOfThree) {
          return "fizz" ;
      } else {
          return "not a fizz buzz! :(";
      }
  }
}
