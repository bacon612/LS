array = [2, 3, 4, 5, 6]
array2 = ['abc', 'def']
array3 = [123]

def oddities(ary)
  oddities_ary = []
  ary.select.each_with_index { |el, idx| idx.even? }
end

p oddities(array)
p oddities(array2)
p oddities(array3)