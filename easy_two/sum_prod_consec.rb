=begin
Problem:
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum or product of all numbers 
between 1 and the entered integer.

Examples:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.

The sum of the integers between 1 and 5 is 15.

>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

# Further Exploration
Use Enumerable#inject in the 'compute_sum' and 'compute_product' methods.

=end
# Using Enuerable#inject

def compute_sum(num)
  (1..num.to_i).inject(:+)
end

def compute_product(num)
  (1..num.to_i).inject(:*)
end

#def compute_sum(num)
#  sum = 0
#  (1..num.to_i).each {|n| sum += n}
#  sum
#end
#
#def compute_product(num)
#  product = 1
#  (1..num.to_i).each {|n| product *= n}
#  product
#end

def valid_int?(num)
  /^\+?([1-9]\d*)$/.match(num)
end

def valid_choice?(option)
  option.downcase == 's' ||
    option.downcase == 'p'
end

integer = nil
loop do
  puts ">> Please enter an integer greater than 0:"
  integer = gets.chomp
  break if valid_int?(integer)
  puts ">> Invalid entry"
end

choice = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp
  break if valid_choice?(choice)
end

if choice == 's'
  sum = compute_sum(integer)
  puts ">> The sum of the integers between 1 and #{integer} is #{sum}."
else
  product = compute_product(integer)
  puts ">> The product of the integers between 1 and #{integer} is #{product}."
end

