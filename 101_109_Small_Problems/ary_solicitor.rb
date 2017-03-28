num_array = []
puts "Please enter the 1st number"
num1 = gets.chomp
num_array << num1
puts "Please enter the 2st number"
num2 = gets.chomp
num_array << num2
puts "Please enter the 3rd number"
num3 = gets.chomp
num_array << num3
puts "Please enter the 4th number"
num4 = gets.chomp
num_array << num4
puts "Please enter the 5th number"
num5 = gets.chomp
num_array << num5
puts "Please enter the last number"
last_num = gets.chomp
if num_array.include?(last_num)
  puts "The number #{last_num} appears in #{num_array}."
else
  puts "The number #{last_num} does not appear in #{num_array}."
end