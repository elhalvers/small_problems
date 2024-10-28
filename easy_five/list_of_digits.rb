=begin
Problem:
Write a method that takes one argument, a positive integer, 
and returns a list of the digits in the number.

Examples:
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

DS&A:
initial idea:
convert integer to string and then do chars on string
and then use map on the array back to integers


=end

def digit_list(num)
  num.to_s.chars.map { |num| num.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
