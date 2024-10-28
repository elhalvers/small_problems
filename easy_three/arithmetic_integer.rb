=begin
Problem:
Write a program that prompts the user for two positive integers, 
and then prints the results of the following operations on those two numbers: 
addition, subtraction, product, quotient, remainder, and power. 
Do not worry about validating the input.

Examples:
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

Discussion
There are some edge cases to consider in this exercise. 
We have to be careful of not having a second number that is zero. 
What if we wanted to use floats instead of integers? 
How does this change this problem?

=end

def prompt(message)
  puts "==> #{message}"
end

num1 = nil
loop do
  prompt("Enter the first number: ")
  num1 = gets.chomp.to_f
  break if num1 > 0
  puts "Please enter a positive number"
end

num2 = nil
loop do
  prompt("Enter the second number: ")
  num2 = gets.chomp.to_f
  break if num2 > 0
  puts "Please enter a positive number"
end

prompt("#{num1} + #{num2} = #{num1 + num2}")
prompt("#{num1} - #{num2} = #{num1 - num2}")
prompt("#{num1} * #{num2} = #{num1 * num2}")
prompt("#{num1} / #{num2} = #{num1 / num2}")
prompt("#{num1} % #{num2} = #{num1 % num2}")
prompt("#{num1} ** #{num2} = #{num1 ** num2}")



