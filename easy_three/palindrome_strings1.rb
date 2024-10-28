=begin
Problem:
Write a method that returns true if the string passed as an argument is a palindrome, 
false otherwise. A palindrome reads the same forward and backward. 
For this exercise, case matters as does punctuation and spaces.

Examples:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

Data Structures:
String - Easiest using Ruby built-in method
Array - old school

Algorithm:
Outside of using the String#reverse built-in method,
you could start with an empty array
Iterate over the passed in String object and 
  insert each character to the front of the array
  convert the array back to a string
  compare the equality of original string and reversed string

=end

def palindrome?(obj)
  obj == obj.reverse
end

# def palindrome?(str)
#  holding_arr = []
#  str.chars.each { |char| holding_arr.unshift(char) }
#  rev_str = holding_arr.join

#  str == rev_str
# end

# Tests

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1, 2, 3, 4, 5]) == false
p palindrome?([1, 2, 3, 2, 1]) == true
p palindrome?(['alpha', 'beta', 'gamma']) == false
p palindrome?(['alpha', 'beta', 'alpha']) == true



