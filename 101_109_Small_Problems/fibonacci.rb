def fibonacci(n)
  arr = [0, 1]
  idx1 = 0
  idx2 = 1
  loop do
    break if n == arr.last.to_s.length
    arr << arr[idx1] + arr[idx2]
    idx1 += 1
    idx2 += 1
    
  end
  arr.size - 1
end

p fibonacci(1)
p fibonacci(10)
p fibonacci(100)
p fibonacci(1000)
p fibonacci(10000)