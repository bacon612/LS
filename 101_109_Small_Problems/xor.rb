def xor?(arg1, arg2)
  # if arg1 == arg2
  #   false
  # else
  #   true
  # end
  arg1 == arg2 ? false : true
end

p xor?(5.even?, 4.even?) #== true
p xor?(5.odd?, 4.odd?) #== true
p xor?(5.odd?, 4.even?) #== false
p xor?(5.even?, 4.odd?) #== false