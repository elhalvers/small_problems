=begin
problem:
Write a method that takes an array of strings, 
and returns an array of the same string values, 
except with the vowels (a, e, i, o, u) removed.

Example:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

DS&A
input: array of strings
output: array of strings
intermediate: array

Mental model:
sounds like a transformation
nested loop for each word
iterate over the letters in the word and delete the letter if
if 'aeiou'

tricky part is

=end

def remove_vowels(array)
  array.map do |word|
    word.gsub(/[aeiouAEIOU]/, '')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
