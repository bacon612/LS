# input: takes string

# output: hash with three entries
#         - number of characters that are lower case lettters
#         - number of characters that are uppercase letters
#         - number of characters that are neither

# abstratction: convert strings to array of chars 
# iterate through array and isolate chars with upcase
# and downcase
# push resulting arrays into hash

# test cases:
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }




def letter_case_count(str)
  letter_case_count = {}
  uppercase = []
  lowercase = []
  neither = []
  str = str.split('')
  str.each do |el|
    if el == el.upcase && el.to_i == 0 && el != ' '
      uppercase << el
    elsif el == el.downcase && el.to_i == 0 && el != ' '
      lowercase << el
    else 
      neither << el
    end
  end
  letter_case_count[:uppercase] = uppercase.count
  letter_case_count[:lowercase] = lowercase.count
  letter_case_count[:neither] = neither.count
  letter_case_count
end

 p letter_case_count('abCdef 123')