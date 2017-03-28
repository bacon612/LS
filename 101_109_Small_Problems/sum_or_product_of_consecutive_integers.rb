puts "Please enter an integer greater than 0:"
int = gets.chomp.to_i
puts "Enter 's' to compute the sum or 'p' to compute the product."
answer = gets.chomp

num = 1
sum = 1
product = 1
if answer == 's'
  loop do
    num += 1
    sum += num
    break if num == int
  end
puts "The sum of the integers between 1 and #{int} is #{sum}."
elsif answer == 'p'
  loop do
    num += 1
    product *= num
    break if num == int
  end
puts "The product of the integers between 1 and #{int} is #{product}"
end


