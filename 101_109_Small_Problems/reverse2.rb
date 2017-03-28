# def reverse(ary)
#   new_ary = []
#   ary.each { |el| new_ary.unshift(el)}
#   new_ary
# end

# def reverse(ary)
#   new_ary = []
#   loop do
#     new_ary << ary.pop
#     break if ary.empty?
#   end
#   new_ary
# end

def reverse(ary)
  new_ary = []
  ary.each do |el| 
    new_ary << ary.pop 
    puts ary 
  end
  new_ary
end

p reverse([1, 2, 3, 4])