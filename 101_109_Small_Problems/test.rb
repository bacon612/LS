DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_int(str)
  num = 0
  str.chars.each { |digit| num = num * 10 + DIGITS[digit]}
  num
end

p string_to_int('1223')