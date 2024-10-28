=begin
Problem:
Build a program that displays when the user will retire 
and how many years she has to work till retirement.

Example:
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056. # Time.now.year for dynamic
You have only 40 years of work to go!
=end

def prompt(message)
  print "=> #{message}"
end

def valid_int?(num)
  /^\+?([1-9]\d*)$/.match(num)
end

age = nil
loop do
  prompt("What is your age? ")
  age = gets.chomp
  break if valid_int?(age)
  prompt("Please enter a positive integer")
end

retirement_age = nil
loop do
  prompt("At what age do you want to retire? ")
  retirement_age = gets.chomp
  break if valid_int?(retirement_age)
  prompt("Please enter a positive integer")
end

current_year = Time.now.year
years_to_retirement = (retirement_age.to_i - age.to_i)

puts"=> It's #{current_year}. \
You will retire in #{current_year + years_to_retirement}."
puts "=> You have only #{years_to_retirement} years of work to go!"






