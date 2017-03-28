DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_int(str)
  num = 0
  str.chars.each { |digit| num = num * 10 + DIGITS[digit]}
  num
end

def string_to_signed_integer(str)
  if str.chars.first.include?('-')
    str = str.chars
    str.delete_at(0)
    str = str.join
    0 - string_to_int(str)
  elsif str.chars.first.include?('+')
    str = str.chars
    str.delete_at(0)
    str = str.join
    string_to_int(str)
  else
    string_to_int(str)
  end
end



p string_to_signed_integer('-570')
p string_to_signed_integer('+570')
p string_to_signed_integer('570')