=begin
Problem:
Write another method that returns true if the string passed as an argument is a palindrome, 
false otherwise. This time, however, your method should be case-insensitive, 
and it should ignore all non-alphanumeric characters. 
If you wish, you may simplify things by calling the palindrome? 
method you wrote in the previous exercise.

Examples:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

Data Structures
Algorithm:

=end

def real_palindrome?(str)
  input_str = str.downcase.strip.delete("^a-z0–9")
  input_str == input_str.reverse
end

# Tests
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
