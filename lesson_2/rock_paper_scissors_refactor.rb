VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You Win!")
  elsif win?(computer, player)
    prompt("Computer Wins!")
  else
    prompt("Its a tie!")
  end
end

loop do
  selection = ''
  loop do
    prompt("Please Select: #{VALID_CHOICES.join(', ')}")
    selection = gets.chomp

    if VALID_CHOICES.include?(selection)
      break
    else
      prompt("That's not a valid selection.")
    end
  end

  computer_selection = VALID_CHOICES.sample

  prompt("You selected: #{selection}. Computer selected #{computer_selection}")

  display_result(selection, computer_selection)

  prompt("Do you want to play again? (y/n) 'y' for yes")
  answer = gets.chomp
  break unless answer.downcase == "y"
end
