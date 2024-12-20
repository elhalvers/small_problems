=begin
Problem:
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) 
such that the first 2 numbers are 1 by definition, and each subsequent number 
is the sum of the two previous numbers. 
This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, 
but the results grow at an incredibly rapid rate. 
For example, the 100th Fibonacci number is 354,224,848,179,261,915,075
-- that's enormous, especially considering that it takes 6 iterations 
before it generates the first 2 digit number.

Write a method that calculates and returns the index 
of the first Fibonacci number that has the number of digits 
specified as an argument. (The first Fibonacci number has index 1.)

Examples:
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

DS&A:
first idea:
generate the fibonacci sequence one at a time
at check the cound of the newest number
if the new number 'size' equals the argument
return the index of that number (+ 1)

both 'size' and 'index' mean array
input:        int
output:       int
intermediate: array

how do i make a fibonacci sequence
- start with an array  [1, 1]
- with each iteration
  append the sum of arr[-2] and arr[-1]
  check if the last element.digits.last equals input num
  if equal, return index of element + 1



=end

def find_fibonacci_index_by_length(num)
  fibo_array = [1, 1]

  loop do
    fibo_array << fibo_array[-2] + fibo_array[-1]

    break if (fibo_array[-1].digits.size == num)
  end
  #p fibo_array
  fibo_array.index(fibo_array[-1]) + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
