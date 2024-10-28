=begin
Problem:
In the previous exercise, you developed a method that converts simple numeric strings to Integers. 
In this exercise, you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer. 
The String may have a leading + or - sign; 
if the first character is a +, your method should return a positive number; 
if it is a -, your method should return a negative number. 
If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, 
such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

Examples:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

DS:
input: string
output: integer
intermediate:
hash to store conversion values

A:
Mental Model,

Use existing string_to_num method.
Check to see if first character of num_string has a '-' or a '+'
- if '-',
    flag 'is_neg' variable to `true`
    remove first char
  else if it is '+'
    remove first char

at the end, if is_neg is true, return (number * -1)
else return number

=end

CONVERSION_HASH = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'a' => 10, 'b' => 11,
  'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15
}

def string_to_signed_integer(num_str, base)
  is_neg = false

  if num_str.chr == '-'
    is_neg = true
    no_sign_num = num_str.delete('-')
  elsif num_str.chr == '+'
    no_sign_num = num_str.delete('+')
  else
    no_sign_num = num_str
  end
  digits = no_sign_num.downcase.chars.map { |char| CONVERSION_HASH[char] }
  number = 0
  
  digits.each { |digit| number = (base * number) + digit }

  if is_neg == true
    return number * -1
  end

  number
end

# Testing different bases
# p string_to_signed_integer('4D9f', 16) == 19871
# p string_to_signed_integer('11111111', 2) == 255

# Testing signed nums
p string_to_signed_integer('4321', 10) == 4321
p string_to_signed_integer('-570', 10) == -570
p string_to_signed_integer('+100', 10) == 100

