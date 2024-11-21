=begin
Problem:
Write a method that takes an Array as an argument, 
and returns two Arrays (as a pair of nested Arrays) 
that contain the first half and second half of the original Array, respectively. 
If the original array contains an odd number of elements, 
the middle element should be placed in the first half Array.

Examples:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true

DS&A
Input: Array
Output: Nested array with two inner arrays

first thoughts:
find the size of the array
divide size by 2 to get the half way index
use Array#slice to return both halfs of the array


=end

def halvsies(array)
  result = []
  if array.empty?
    return [[],[]]
  
  elsif array.size.even?
    index = array.size / 2 - 1
  else
    index = array.size / 2
  end

  result << array.slice(..index)
  result << array.slice(index +1..)
  result
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true
