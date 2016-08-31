#Case Statement version
puts "Please enter a number between 0-100"

number = gets.chomp.to_i

answer = case

when number <= 50
	 "Your number is is between 0 and 50"
	
	when number > 51 && number < 100
		 "Your number is between 51 and 100"
		
	else number > 100
		 "Your number is greater than 100"
		
	end
	
	puts answer
	

#Case statement version wrapped in method
def extremeconfusion number

answer = case

when number <= 50
	 "Your number is is between 0 and 50"
	
	when number > 51 && number < 100
		 "Your number is between 51 and 100"
		
	else number > 100
		 "Your number is greater than 100"
		
	end
	puts answer
end
	
	


#Non case statement version wrapped in method
def mildconfusion number	

if number < 50
	puts "Your number is is between 0 and 50"
	
	elsif number > 51 && number < 100
		puts "Your number is between 51 and 100"
		
	elsif number > 100
		puts "Your number is greater than 100"
		
	end
end

puts "Please enter a number between 0 and 100"
number = gets.chomp.to_i
mildconfusion (number)
extremeconfusion (number)