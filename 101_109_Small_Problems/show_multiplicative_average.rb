def show_multiplicative_average(ary)
  ary_char_count = ary.count
  total = 1
  ary.each {|char| total = total * char}
  puts "The result is #{(total.to_f / ary_char_count).round(3)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])