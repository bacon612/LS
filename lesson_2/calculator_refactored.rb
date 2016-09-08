def prompt(message)
	puts ("=> #{message}")
end

def valid_number(num)
	num.to_i != 0
end
	
def action_to_message(act)
	case act
		when '1'
			'Adding'
		when '2'
			'Subtracting'
		when '3'
			'Multiplying'
		when '4'
			'Dividing'
		end
	end

prompt("I AM CALCULATOR! Who are you?")
name = ''
loop do
	name = Kernel.gets.chomp
	
	if name.empty?
		prompt("That is a terrible name, please try again")
	else
		break
	end
end

prompt("Hi #{name}.")
loop do
	
	num1 = ''
	loop do 
		prompt("Please enter the first number")
		num1 = Kernel.gets().chomp()
		
			if valid_number(num1)
			break
		else
			prompt("Invalid number. Please retry.")
		end
	end
	num2 = ''
	loop do
	prompt("Please enter the second number")
	num2 = Kernel.gets().chomp()
		if valid_number(num2)
			break
		else
			prompt("Invalid number. Please retry")
		end
	end
	
	action_prompt = <<-MSG
		"What would you like to do to these numbers? 
		1) add
		2) subtract 
		3)multiply 
		4)divide
	MSG
	

	prompt(action_prompt)
		
		action = ''
		loop do
			action = Kernel.gets().chomp()
			
			if %w(1 2 3 4).include?(action)
				break
			else
				prompt("Sorry, you must choose 1, 2, 3 or 4")
			end
		end
		
		prompt("#{action_to_message(action)} the two numbers...")

		answer = case action
									when '1'
									num1.to_i + num2.to_i
									when '2'
									num1.to_i - num2.to_i
									when '3'
									num1.to_i * num2.to_i
									when '4'
									num1.to_f / num2.to_f
		end

		prompt("The answer is #{answer}")

		prompt("Do you want to use CALCULATOR again? (y for yes)")
		again = Kernel.gets.chomp
		break unless again.downcase.start_with?('y')
end

prompt("Thanks for using CALCULATOR,#{name}")

