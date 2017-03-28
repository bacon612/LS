array = [1, 2, 3, 4, 5]
array2 = ['abc', 'def']
array3 = [123]


def oddities(arr)
  arr.delete_if {|obj| arr.index(obj)% 2 == 1}
  arr
end

# def oddities(ary)
#   odd_ary = []
#   ary.each_with_index { |ele, index| (odd_ary << ele) if index.even? }
#   odd_ary
# end

p oddities(array)
p oddities(array2)
p oddities(array3)

# def oddities(ary)
#   ary.select.each_with_index { |_, index| index.even? }
# end

