=begin
Problem:
Write a method that takes a single String argument 
and returns a new string that contains the original value of the argument 
with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

DS&A:
input: string
output: string

first thoughts:
convert string to array
iterate over each word (transform (map)) in the array
 capitalize each word
 convert transformed array back to a string
 - tricky part is example 3 that ignores the words in double quotes



=end

def word_cap(string)
  words = string.split
  capitalized_words = words.map do |word|
    word.capitalize unless word.start_with?("'")
  end
 capitalized_words.join(' ') 
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
