=begin
Problem:
Write a method named include? that takes an Array 
and a search value as arguments. 
This method should return true if the search value is in the array, 
false if it is not. You may not use the Array#include? method in your solution.

Examples:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

DS&A:
iterate over the array,
if element = target
true else false

=end

def include?(arr, target)
  if arr.empty?
    false
  end
  arr.each do |num|
    if num == target
      return true
    end
  end
  return false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
