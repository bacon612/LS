def include?(ary, s_value)
  ary.each do |el|
    return true if el == s_value
  end
  false
end

p include?([1,2,3,4,5], 3)

p include?([1,2,3,4,5], 6)

p include?([], 3)