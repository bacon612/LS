def multisum(num)
  numrange = (1..num).to_a
  numgroup = numrange.select { |multi| multi % 3 == 0 || multi % 5 == 0}
  sum = 0
  numgroup.each { |el| sum = sum + el}
  sum
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)