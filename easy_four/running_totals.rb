=begin
Problem:
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

Input: Array
Output: Array

Rules:
- method returns an arrray with the same number of elements as the input array.
- each element in the returned array is a running total from the input array
* An input array of one or no elements returns the same input array

Hint:
A running total is the sum of all values in a list up to and including 
the current element. Thus, the running total when looking at index 2
of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), while the running total at 
index 3 is 47 (14 + 11 + 7 + 15).

Observations / Questions:

Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

Data Structures: Array

Algorithm: 
(Notes)
- looks like a mapping problem, returning a new array with the same number of elements.
- I might want to iterate with num and index
- I could do it old school using a loop method and index
  - starting with an empty results array and index_counter
    - for each iteration I could push to the results array
      - if current element is in position 0, push the element,
       otherwise, push the value of the (current element + current el - 1)
       break at array length.
  return the result
=end

#def running_total(array)
#  index_counter = 0
#  result = []
#
#  if array.size <= 1
#    return array
#  end
#
#  loop do
#    break if index_counter == array.size
#    if index_counter == 0
#      result << array[index_counter]
#    end
#
#    if index_counter > 0
#      result << (array[index_counter] + result[index_counter - 1])
#    end
#    index_counter += 1
#  end
#
#  result
#end
#
#

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
