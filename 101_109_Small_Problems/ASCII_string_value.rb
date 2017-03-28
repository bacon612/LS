# def ascii_value(str)
#   split_ary = str.chars
#   sum = 0
#   split_ary.each { |char| sum += char.ord}
#   sum
# end
def ascii_value(str)
  total = 0
  str.chars { |char| total += char.ord }
  total
end

p ascii_value('Four score')