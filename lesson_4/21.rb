def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  [["H", "2"], ["H", "3"], ["H", "4"], ["H", "5"], ["H", "6"], ["H", "7"],
   ["H", "8"], ["H", "9"], ["H", "10"], ["H", "J"], ["H", "Q"], ["H", "K"],
   ["H", "A"], ["D", "2"], ["D", "3"], ["D", "4"], ["D", "5"], ["D", "6"],
   ["D", "7"], ["D", "8"], ["D", "9"], ["D", "10"], ["D", "J"], ["D", "Q"],
   ["D", "K"], ["D", "A"], ["C", "2"], ["C", "3"], ["C", "4"], ["C", "5"],
   ["C", "6"], ["C", "7"], ["C", "8"], ["C", "9"], ["C", "10"], ["C", "J"],
   ["C", "Q"], ["C", "K"], ["C", "A"], ["S", "2"], ["S", "3"], ["S", "4"],
   ["S", "5"], ["S", "6"], ["S", "7"], ["S", "8"], ["S", "9"], ["S", "10"],
   ["S", "J"], ["S", "Q"], ["S", "K"], ["S", "A"]]
end

def initial_deal(deck, player_cards, dealer_cards)
  player_cards << deck.shuffle!.pop
  player_cards << deck.shuffle!.pop
  dealer_cards << deck.shuffle!.pop
  dealer_cards << deck.shuffle!.pop
  prompt "Player is dealt #{player_cards}."
  prompt "Dealer is dealt #{dealer_cards[0]}, ?"
end

def hit_player(deck, player_cards)
  player_cards << deck.shuffle!.pop
end

def hit_dealer(deck, dealer_cards)
  dealer_cards << deck.shuffle!.pop
end

def hand_value(cards)
  values = cards.map { |card| card[1] }
  total_val = 0
  values.each do |val|
    if val == 'J'
      total_val += 10
    elsif val == 'Q'
      total_val += 10
    elsif val == 'K'
      total_val += 10
    elsif val == 'A'
      total_val += 1
    end
    total_val += val.to_i
  end
  # aces = values.select { |val| val == 'A' }
  # aces.count.times { total_val -= 10 if total_val > 21 }
  if values.include?('A') && total_val + 10 <= 21
    total_val += 10
  end
  total_val
end

def player_turn(deck, player_cards, dealer_cards)
  loop do
    prompt "Player, it's your turn. Do you want to hit or stay?"
    prompt "type 'hit' or 'stay'"
    answer = gets.chomp
    if answer == 'stay'
      prompt "Player chooses to stay. Dealer's turn now"
      break
    else
      prompt "Player chooses hit"
      hit_player(deck, player_cards)
      prompt "Player's cards are #{player_cards}."
      prompt "Dealer's cards are #{dealer_cards[0]}, ?"
      break if hand_value(player_cards) >= 21
    end
  end
  player_cards
end

def tie_bust_win?(player_cards, dealer_cards)
  if hand_value(player_cards) == 21 || hand_value(dealer_cards) == 21
    return true
  elsif hand_value(player_cards) > 21 || hand_value(dealer_cards) > 21
    prompt "Busted!"
    return true
  end
  false
end

def dealer_turn(deck, dealer_cards)
  loop do
    if hand_value(dealer_cards) >= 17
      prompt "Dealer stays..."
      break
    else
      prompt "Dealer chooses to hit"
      hit_dealer(deck, dealer_cards)
    end
  end
  dealer_cards
end

loop do
  prompt "Welcome to 21!"
  deck = initialize_deck
  player_cards = []
  dealer_cards = []
  loop do
    initial_deal(deck, player_cards, dealer_cards)
    break if tie_bust_win?(player_cards, dealer_cards)
    player_turn(deck, player_cards, dealer_cards)
    break if tie_bust_win?(player_cards, dealer_cards)
    dealer_turn(deck, player_cards, dealer_cards)
    break
  end
  prompt "Dealer's card value is #{hand_value(dealer_cards)}."
  prompt "Player's card value is #{hand_value(player_cards)}."

  if hand_value(dealer_cards) == hand_value(player_cards)
    prompt "It's a tie!"
  elsif hand_value(dealer_cards) > hand_value(player_cards) && hand_value(dealer_cards) <= 21
    prompt "Dealer wins!"
  elsif hand_value(dealer_cards) < hand_value(player_cards) && hand_value(player_cards) <= 21
    prompt "Player wins!"
  end

  prompt "Thanks for playing 21! Would you like to play again? (y/n)"
  answer = gets.chomp
  break unless answer == 'y'
end
