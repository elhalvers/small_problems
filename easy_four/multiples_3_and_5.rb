=begin
Problem:
Write a method that searches for all multiples of 3 or 5 
that lie between 1 and some other number, and then computes the sum 
of those multiples. For instance, if the supplied number is 20, 
the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

Input: Integer greater than one.
Output: Integer representing the sum of multiples based on criteria.

Rules:
 - The number passed in is an integer greater than 1.
 * It looks like the imput number is included in the multiples.

Questions / Assumptions

Examples:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(20) == 98
multisum(1000) == 234168

Data Structures:
Input: Integer
Output: Integer
Intermediate: Array

Algorithm:
0. Initialize a local variable, `result_array` to an empty array.
1. Itialize a local variable, `counter` set to the integer `1'
2. Invoke a loop method with a block
  - On each iteration,
    - 
3. Return the sum of the `result_array`
=end

def multisum(number)
  result_array = []
  three_counter = 1
  five_counter = 1

  loop do
    three_multiple = 3 * three_counter
    break if number < 3 || three_multiple > number
    result_array << three_multiple
    three_counter += 1
  end

  loop do
    five_multiple = 5 * five_counter
    break if number < 5 || five_multiple > number
    result_array << five_multiple
    five_counter += 1
  end
  result_array.uniq.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(20) == 98
p multisum(1000) == 234168
