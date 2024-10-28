=begin
Problem:
In this exercise, you will write a method named xor that takes two arguments, 
and returns true if exactly one of its arguments is truthy, false otherwise. 
Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

Examples:
xor?(5.even?, 4.even?) == true # Exactly one is true.
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

=end

def xor?(arg1, arg2)
  !!((arg1 && !arg2) || (!arg1 && arg2))
end

# Tests
p xor?(5.even?, 4.even?) == true 
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

p xor?('hello', false) == true
p xor?(5, nil) == true
p xor?(nil, false) == false
p xor?('hello', 'world') == false




