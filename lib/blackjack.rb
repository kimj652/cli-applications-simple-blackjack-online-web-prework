def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = 0
  # code #initial_round here
  2.times do 
    sum += deal_card
  end
  display_card_total(sum)
  return sum
end

def hit?(num)
  # code hit? here
  loop do
    prompt_user
    input = get_user_input
    if input == "h"
      return num + deal_card
    elsif input == "s"
      return num
    else
      invalid_command
    end
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  # code runner here
  welcome
  sum = initial_round
  while sum <= 21 
  sum = hit?(sum)
  display_card_total(sum)
  end
  end_game(sum)
end
    
