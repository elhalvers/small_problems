=begin
Problem:
Write a program that will ask for a user's name.
The program will then greet the user. If the user writes "name!",
the computer yells back at the user.

Examples:
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
=end

print "What is your name? "
name = gets.chomp

if name.end_with?('!')
  # String#chop is an alternative - removes last char.
  puts "Hello #{name.delete('!')}. Why are we screaming?".upcase 
else
  puts "Hello #{name.capitalize}."
end
