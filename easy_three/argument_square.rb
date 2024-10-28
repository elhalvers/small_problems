=begin
Using the multiply method from the "Multiplying Two Numbers" problem, 
write a method that computes the square of its argument 
(the square is the result of multiplying a number by itself).

Further Exploration
What if we wanted to generalize this method to a "power to the n" type method: 
cubed, to the 4th power, to the 5th, etc. 
How would we go about doing so while still using the multiply method?
=end

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power_to_the_n(num, n)
  result = 1
  n.times do
    result = multiply(result, num)
  end
  result
end


# Tests
p square(5) == 25
p square(-8) == 64

p power_to_the_n(2, 3) == 8
p power_to_the_n(2, 4) == 16

