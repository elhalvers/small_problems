=begin
Problem:
Write a method that takes a string argument, 
and returns true if all of the alphabetic characters inside the string are uppercase, 
false otherwise. Characters that are not alphabetic should be ignored.

Examples:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

DS:
starting: String
Intermediate: Array to take advantage of built-in methods
Ending: Boolean

=end

def uppercase?(str)
  str = str.delete('^a-zA-Z')
  str.chars.all? { |char| char == char.upcase }
end

# Tests
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
