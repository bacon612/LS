# def multiply_all_pairs(ar1, ar2)
#   ary = []
#   ar1.each do |el|
#     ar2.each {|el2| ary << el * el2}
#   end
#   ary.sort
  
# end

def multiply_all_pairs(ar1, ar2)
  ar1.map {|el1| ar2.map {|el2| el1 * el2}}.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])

