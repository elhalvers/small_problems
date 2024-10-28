=begin
Problem
The String#to_i method converts a string of numeric characters 
(including an optional plus or minus sign) to an Integer. 
String#to_i and the Integer constructor (Integer()) behave similarly. 
In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate 
number as an integer. 

Input: String
Output: Integer

Rules:
- You may not use any of the methods mentioned above. ( String#to_i or Integer() )
- For now, do not worry about leading + or - signs
- nor should you worry about invalid characters; 
- assume all characters will be numeric.
- You may not use any of the standard conversion methods available in Ruby 
  to convert a string to a number, such as String#to_i, Integer(), etc. 
- Your method should do this the old-fashioned way and calculate the result 
  by analyzing the characters in the string.

Examples:
string_to_integer('4321') == 4321
string_to_integer('570') == 570

Data Structures:
Input: String
Output: Integer

Algorithm:
Mental Model:
Need to learn Regex.

Otherwise, could iterate over each char in string
and for each char use a long case statement, "1" == 1, "2" == 2, etc...
  


=end

# NUMS = {
#     "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
#     "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9
#   }

def string_to_integer(string)
  num_array = string.chars.map { |char| char.ord - 48 }

  value = 0
  num_array.each { |num| value = 10 * value + num }
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
