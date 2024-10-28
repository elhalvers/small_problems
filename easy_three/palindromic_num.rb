def palindromic_number?(num)
  num = num.to_s#.gsub(/\b0+/, "").strip
  p num
  num == num.reverse
end

# Tests
#p palindromic_number?(34543) == true
#p palindromic_number?(123210) == false
#p palindromic_number?(22) == true
#p palindromic_number?(5) == true
p palindromic_number?(00051) == false
p palindromic_number?(000515) == true
p palindromic_number?(00005115) == true

