=begin
Problem:
Write a method that takes a string argument
and returns a new string that contains the value
of the original string with all consecutive duplicate characters
collapsed into a single character. 
You may not use String#squeeze or String#squeeze!.

Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

DS&A
input: string
output: string
intermediate: array maybe

Mental model:
- consecutive duplicates => leave 1
declare a result empty string
create a counter set to 0
iterate over the characters in the string,
if counter is set to zero,
append char to result



=end

def crunch(string)
  result = ''
  counter = 0
  string.each_char do |char|
    next if char == result[-1]
    result << char
  end
  result
end

 p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
 p crunch('4444abcabccba') == '4abcabcba'
 p crunch('ggggggggggggggg') == 'g'
 p crunch('a') == 'a'
 p crunch('') == ''
