=begin
Problem:
Write a method that takes a string, 
and then returns a hash that contains 3 entries: 
one represents the number of characters in the string that are lowercase letters, 
one represents the number of characters that are uppercase letters, 
and one represents the number of characters that are neither.

Examples
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

DS&A:
input: string with a variety of chars including spaces
output: hash
Rules:
- Returned hash has only 3 entries, num lowercase, num uppercase, num neither as values
* spaces count as 'neither'

first idea:
I think Ruby has a method that does something like this (tally?)
but #tally does not group the distinct characters

Regex seems to be useful here 
 - a count function with a block

 - Create a var for empty result hash {}
 - var => convert string into array of chars
 - use count with block and regex to get counts of
   lowercase, uppercase and neither
   use hash[key] = value for each
   return result hash
=end

def letter_case_count(string)
  result = {lowercase: 0, uppercase: 0, neither: 0}
  char_array = string.chars

  # 3 iterations over character array
  #result[:lowercase] = char_array.count {|char| char.match(/[a-z]/)}
  #result[:uppercase] = char_array.count {|char| char.match(/[A-Z]/)}
  #result[:neither] = char_array.count {|char| char.match(/[^a-zA-Z]/)}

  # could itterate once over array and 
  # use a case statement to add counts to the result hash
  
  char_array.each do |char|
    case char
    when /[a-z]/
      result[:lowercase] += 1
    when /[A-Z]/
      result[:uppercase] += 1
    when /[^a-zA-Z]/
      result[:neither] += 1
    end
  end
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
