=begin
Problem:
Write a program that solicits 6 numbers from the user, 
then prints a message that describes whether or not the 6th number 
appears amongst the first 5 numbers.

Examples:
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

=end


return_array = []

def prompt(message)
  p "==> #{message}"
end

prompt("Enter the 1st number: ")
num1 = gets.chomp.to_i
return_array << num1

prompt("Enter the 2nd number: ")
num2 = gets.chomp
return_array << num2.to_i

prompt("Enter the 3rd number: ")
num3 = gets.chomp
return_array << num3.to_i

prompt("Enter the 4th number: ")
num4 = gets.chomp
return_array << num4.to_i

prompt("Enter the 5th number: ")
num5 = gets.chomp
return_array << num5.to_i

prompt("Enter the last number: ")
num_last = gets.chomp.to_i

puts

if return_array.include?(num_last)
  p "The number #{num_last} appears in #{return_array}."
else
  p "The number #{num_last} does not appear in #{return_array}."
end

