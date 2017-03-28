def palindromic_number?(int)
  int == int.to_s.reverse.to_i
end

p palindromic_number?(34543) 
p palindromic_number?(123210) 
p palindromic_number?(22)
p palindromic_number?(5)
p palindromic_number?(005)
p palindromic_number?(0005005)