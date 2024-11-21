=begin
Problem:
Write a method that takes two Arrays as arguments, 
and returns an Array that contains all of the values from the argument Arrays. 
There should be no duplication of values in the returned Array, 
even if there are duplicates in the original Arrays.

Example
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

DS&A:


=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
#  new_arr = []
#  arr1.each {|el| new_arr << el }
#  arr2.each do |el|
#    next if new_arr.include?(el)
#    new_arr << el
#  end
#  new_arr
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
