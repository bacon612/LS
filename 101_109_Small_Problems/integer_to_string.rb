DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end


def integer_to_signed_string(number)
   if number.positive?
    converted_num = integer_to_string(number)
    converted_num.prepend('+')
  elsif number.negative?
    converted_num = number *(-1)
    converted_num = integer_to_string(converted_num)
    converted_num.prepend('-')
  end
  converted_num
end

p integer_to_signed_string(-4321)