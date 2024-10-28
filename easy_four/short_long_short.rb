=begin
Problem:
Write a method that takes two strings as arguments, 
determines the longest of the two strings, 
and then returns the result of concatenating 
the shorter string, the longer string, and the shorter string once again. 
You may assume that the strings are of different lengths.

Input: 2 strings
Output: 1 concatenated string, short-long-short

Rules:
Explicit
- The 2 input strings are of different length


Examples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

Data Structures:
Input: String
Output: String
Intermediate: String

Algorithm:

if the length of string1 is greater than the length of string2
  return string2 + string1 + string2
otherwise,
  return string1 + string2 + string1
=end

def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

