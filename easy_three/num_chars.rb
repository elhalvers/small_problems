=begin
Write a program that will ask a user for an input of a word or multiple words 
and give back the number of characters. 
Spaces should not be counted as a character.

Examples:

Input:
Please write word or multiple words: walk

Output:
There are 4 characters in "walk".

Input:
Please write word or multiple words: walk, don't run

Output:
There are 13 characters in "walk, don't run".

=end

print 'Please write a word or multiple words: '
input_str = gets.chomp

count_chars = input_str.delete(" ").size

puts "There are #{count_chars} characters in \"#{input_str}\"."
