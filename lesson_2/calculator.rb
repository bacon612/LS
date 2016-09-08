puts "Please enter a number"
num1 = Kernel.gets().chomp()

puts "Please enter another number"
num2 = Kernel.gets().chomp()

puts "Please type what you want to do with these two numbers. ie. add, subtract, multiply or divide"
action = Kernel.gets().chomp()

if action == "add"  
 puts num1.to_i + num2.to_i
elsif action == "subtract"   
	puts num1.to_i - num2.to_i
elsif action == "multiply"  
	puts num1.to_i * num2.to_i
elsif action == "divide"  
	puts num1.to_f / num2.to_f
end



