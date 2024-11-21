=begin
Problem:
The time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format 
and returns the time of day in 24 hour format (hh:mm). 
Your method should work with any integer input.

You may not use Ruby's Date and Time classes.

Examples:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Disregard Daylight Savings and Standard Time and other complications.

DS:
Input: int (num)
Output: string in a (hh:mm) format

Algorithm:
- minutes in 24 hours = 1440
- minutes in 1 hour = 60

Mental model:

prefix

ranges:
positive:
1-59 (prefix '00') (hour = "00")
60-599 (prefix '0')
600-1439 no prefix
1440 resets to 0 (hour = "00")

negative:


    


=end

def time_of_day(num)
  case 
  when num == 0
    return "00:00"

  when (1..59).include?(num) 
    return ("00:" + num.to_s)

  when (60..599).include?(num)


  when (600..1439).include?(num)
    hours, minutes = num.divmod(60)
    return "#{hours}:#{minutes}"
  end
end

puts time_of_day(0) == "00:00"
puts time_of_day(35) == "00:35"
puts time_of_day(65) == "01:05"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
puts time_of_day(-1437) == "00:03"
puts time_of_day(-3) == "23:57"

