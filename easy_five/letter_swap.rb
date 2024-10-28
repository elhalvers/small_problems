=begin
Problem:
Given a string of words separated by spaces, 
write a method that takes this string of words and returns a string 
in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, 
and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces.

Input: string of words separated by spaces
Output: string meeting the criteria
Intermediate: array

Rules:
- You may assume that every word contains at least one letter, 
- and that the string will always contain at least one word. 
- You may also assume that each string contains nothing but words and spaces.

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

DS&A:
- mental model
start by splitting the string into an array, each word separated by a space
we want to transform the array so that the returned new array has 
the same words in order but each word swaps the first and last letter
 - could have a swap helper method
then joins the array back into a returned string.

=end

def swap_ends(word)
if word.size == 1
  return word
end
  first_letter = word[0]
  last_letter = word[-1]
  new_word = word.delete(first_letter).delete(last_letter)
  new_word.insert(0, last_letter).insert(-1, first_letter)
  new_word
end

def swap(words)
  if words.size == 1
    return words
  end

  words_array = words.split
  return_arr = words_array.map do |word|
                 swap_ends(word)
               end
  return_arr.join(' ')
end

puts (swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si')
puts (swap('Abcde') == 'ebcdA')
puts (swap('a') == 'a')
