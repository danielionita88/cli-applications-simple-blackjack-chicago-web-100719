def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
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
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  sum = num1 + num2
  display_card_total(sum)
  sum
end



def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end



def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    return card_total
  elsif user_input == 'h'
  card_total += deal_card
  else invalid_command
    prompt_user
    user_input = get_user_input
  end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
 welcome 
 card_total = initial_round
 until card_total > 21
 hit?
 display_card_total
 end
 
 end_game

end
    
