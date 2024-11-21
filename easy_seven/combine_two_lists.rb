=begin
Problem:
Write a method that combines two Arrays passed in as arguments, 
and returns a new Array that contains all elements from both Array arguments, 
with the elements taken in alternation.

You may assume that both input Arrays are non-empty, 
and that they have the same number of elements.

Example:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

DS&A:
first thought: probably a ruby method that does this
more language agnostic:
create an empty 'result' array
create a starting index var initialized to 0
on each iteration, starting with arr1,
  apppend arr[index], then same with arr2
return result array

=end

def interleave(arr1, arr2)
  result = []
  index = 0

  loop do
    break if index == arr1.size 
    result << arr1[index]
    result << arr2[index]
    index = index + 1
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
