def prompt(message)
  puts "=> #{message}"
end

prompt("Hi. Welcome to Mortgage Calulator")
prompt("---------------------------------")

loop do
  prompt("Please enter the loan amount")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Please endter a positive number")
    else
      break
    end
  end

  prompt("Please enter the APR")
  prompt("IE for 2% use 2 or 4.3% use 4.3")

  apr = ''
  loop do
    apr = gets.chomp
    if apr.empty? || apr.to_f < 0
      prompt("APR must me a positive number")
    else
      break
    end
  end

  prompt("Please enter the loan's duration in years")

  duration = ''
  loop do
    duration = gets.chomp
    if duration.empty? || duration.to_f < 0
      prompt("Load duration must me a positive number")
    else
      break
    end
  end

  apr = apr.to_f / 100
  monthly_apr = apr / 12
  months = duration.to_i * 12

  monthly_payment = loan_amount.to_f *
                                    (monthly_apr /
                                    (1 - (1 + monthly_apr)**-months.to_i))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  prompt("Would you like to calculate another payment. Type 'y' for yes")

  reply = gets.chomp
  break unless reply.downcase == 'y'
end

# apr % 12 = monthly_apr

# m = p * (j / (1 - (1 + j)**-n))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
