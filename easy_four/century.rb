=begin
Problem:
- Write a method that takes a year as input and returns the century. 
- The return value should be a string that begins with the century number, 
- and ends with st, nd, rd, or th as appropriate for that number.

Input: Year (positive integer)
Output: String with the correct century number and correct append ending.

Rules:
New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Examples:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

Data Structures:
Input: `year` (positive integer)
Output: String

Algorithm
1. Return the correct century based on input year.

If `year` modulo 100 == 0
  `century` equals `year` / 100
otherwise,
  `century equals (`year` / 100) + 1

2. Convert the century to a string appending the correct suffix and return.
  If century length equals 1
    if century equals 1
      `century` + 'st'
    elsif century equals 2
      `century` + 'nd'
    elsif century equals 3
      `century` + 'rd'
    else
      `century` + 'th'

  If century length >= 2
    if last character equals 1 AND next to last character IS NOT 1
      `century` + 'st'
    elsif last character equals 2 AND next to last character IS NOT 1
      `century` + 'nd'
    elsif last character equals 3 AND next to last character IS NOT 1
      `century` + 'nd'
    else
      `century` + 'th'
=end

def century(year)
  if year % 100 == 0
    century = year / 100
  else
    century = (year / 100) + 1
  end

  century = century.to_s

  if century.size == 1
    if century == '1'
      return century + 'st'
    elsif century == '2'
      return century + 'nd'
    elsif century == '3'
      return century + 'rd'
    else
      return century + 'th'
    end
  end

  if century.size >= 2
    if century[-1].to_i == 1 && century[-2].to_i != 1
        century + 'st'
    elsif century[-1].to_i == 2 && century[-2].to_i != 1
      century + 'nd'
    elsif century[-1].to_i == 3 && century[-2].to_i != 1
      century + 'rd'
    else
      century + 'th'
    end
   end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
