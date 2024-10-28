=begin
problem:
Given a string that consists of some words (all lowercased)
and an assortment of non-alphabetic characters,
write a method that returns that string with 
all of the non-alphabetic characters replaced by spaces. 
If one or more non-alphabetic characters occur in a row, 
you should only have one space in the result
(the result should never have consecutive spaces).

Examples:
cleanup("---what's my +*& line?") == ' what s my line '

DS&A:
input: string
output: string
intermediate: array

mental model:
create a results string or array
convert input string into an array of characters
for each character, check if it is  in ('a'..'z') or ('A'..'Z')
if it is, append to the result string
return result string
if using an array, join the array back to a string for the return value

String.substitute and also squeeze?



=end

def cleanup(phrase)
  phrase.gsub!(/[^a-zA-Z]/, ' ').squeeze(' ')
end


puts cleanup("---what's my +*& line?") == ' what s my line '
