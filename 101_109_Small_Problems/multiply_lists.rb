# def multiply_lists(ar1, ar2)
#   ar1.map.with_index {|el, idx| el * ar2[idx]}
# end

def multiply_lists(ar1, ar2)
  ar1.zip(ar2).map {|a, b| a * b}
end

p multiply_lists([3, 5, 7], [9, 10, 11])