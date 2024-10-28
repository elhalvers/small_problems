=begin
Problem:
In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. 
In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, 
such as Integer#to_s, String(), Kernel#format, etc. 
Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

Examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

DS&A:
- input: int
- output: String
- intermediate: conversion hash?

Mental model:
create a conversion hash (`conversion_hash`) that maps integers to their string equivalent
- not sure if there is a way to convert the input int into an array to use array iterators,
- assuming you can, you can just join the array of digits to a string output.
=end

=begin
LS Solution: This one uses an array and index retrieval with string values that represent index position (cool!)

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

=end

# My solution

def integer_to_string(int)
  int.digits.reverse.join # Array#join uses .to_s under the hood
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
