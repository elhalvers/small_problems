=begin
Problem:
Write a method that determines and returns the ASCII string value of a string 
that is passed in as an argument. 
The ASCII string value is the sum of the ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character)

Examples:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

DS:
input: String
output: Integer
intermediate: array

Algorithm:
0. Create a `total` local variable
if phrase is nil, return 0
1. convert string to an array of chars
2. iterate over each char,
   - for each char, reasssign value of `total`
     to char.ord
3. Return total

=end

def ascii_value(phrase)
  if phrase.empty?
    return 0
  end

  total = 0

  phrase.chars.each { |char| total += char.ord }
  total
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
