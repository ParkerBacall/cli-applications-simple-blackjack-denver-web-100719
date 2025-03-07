require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)

end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def invalid_command
 puts "Please enter a valid command"
end


def hit?(card_total)
  prompt_user
  user_input = get_user_input
  card_total
    if user_input == 'h'
      card_total += deal_card
      card_total
    elsif user_input == 's'
      card_total
    else
      invalid_command
      hit?(card_total)
    end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner()
  card_total = 0
  while card_total < 21 do
    welcome
    card_total = initial_round
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
