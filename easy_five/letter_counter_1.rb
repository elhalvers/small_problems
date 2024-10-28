=begin
Problem:
Write a method that takes a string with one or more space separated words 
and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

DS&A:
input: String
Output: Hash
Intermediate: Array (split)

Mental model:
create an empty result hash
split input string into an array of words
iterate over the array and for each word
find the size. if the size (key) does not exist, key = 0
else key += 1
return result hash


=end

def word_sizes(phrase)
  result = {}

  phrase.split.each do |word|
    if result.include?(word.size)
      result[word.size] += 1
    else
      result[word.size] = 1
    end
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
