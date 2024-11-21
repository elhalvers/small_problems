=begin
Problem:
Write a method that takes a string as an argument and 
returns a new string in which every uppercase letter 
is replaced by its lowercase version, and every lowercase letter 
by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:
swapcase('PascalCase') == 'pASCALcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

DS&A:
input: string
output :string
intermediate: maybe array

first ideas.
- while iterting over each char,
  have to determine if exisging char
  is upcase or lowercase by
  comparing it to an upcased or downcased version
  like 'a' == 'a'.downcase

=end

def swapcase(string)
  transformed_arr = []
  chars = string.chars

  chars.each do |char|
   if char == char.downcase
     transformed_arr << char.upcase
   else
     transformed_arr << char.downcase
   end
  end
  transformed_arr.join
end

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
