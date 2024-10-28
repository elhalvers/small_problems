#def multiple?(number, divisor)
#  number % divisor == 0
#end

#def multisum(max_value)
#  sum = 0
#  1.upto(max_value) do |number|
#    if multiple?(number, 3) || multiple?(number, 5)
#      sum += number
#    end
#  end
#  sum
#end

def multisum(max_value)
  (1..max_value).select { |num| num % 3 == 0 || num % 5 == 0 }.sum
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(20) == 98 
p multisum(1000) == 234168
