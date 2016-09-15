VALID_CHOICES = %w(rock paper scissors spock lizard)

WINNING_COMBOS = { 'rock' => %w(scissors lizard),
                   'paper' => %w(rock spock),
                   'scissors' => %w(paper lizard),
                   'spock' => %w(rock scissors),
                   'lizard' => %w(spock lizard) }

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WINNING_COMBOS[first].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You win this hand!")
  elsif win?(computer, player)
    prompt("Computer wins this hand!")
  else
    prompt("Its a tie!")
  end
end

prompt("Welcome to RPSSL! Game plays to best of five")

player_score = 0
computer_score = 0
loop do
  selection = ''
  loop do
    prompt("Please Select r for Rock, p for Paper,
    sc for Scissors, sp for Spock or l for Lizard")
    abr_selection = gets.chomp

    if abr_selection == 'r'
      selection = 'rock'
    elsif abr_selection == 'p'
      selection = 'paper'
    elsif abr_selection == 'sc'
      selection = 'scissors'
    elsif abr_selection == 'sp'
      selection = 'spock'
    elsif abr_selection == 'l'
      selection = 'lizard'
    end

    if VALID_CHOICES.include?(selection)
      break
    else
      prompt("That's not a valid selection.")
    end
  end

  computer_selection = VALID_CHOICES.sample

  prompt("You selected: #{selection} Computer selected: #{computer_selection}")

  display_result(selection, computer_selection)

  if selection == computer_selection
    player_score = player_score
    computer_score = computer_score
  elsif win?(selection, computer_selection)
    player_score += 1
  elsif win?(computer_selection, selection)
    computer_score += 1
  end
  prompt("You're score: #{player_score}")
  prompt("Computer's score: #{computer_score}")
  if player_score == 5
    prompt("Congratulations! You won the game!")
    prompt("Do you want to play again? (y/n)")
    answer = gets.chomp
    break unless answer.downcase == "y"
  elsif computer_score == 5
    prompt("Sorry, You lost the game")
    prompt("Do you want to play again? (y/n)")
    answer = gets.chomp
    break unless answer.downcase == "y"
  end
end
