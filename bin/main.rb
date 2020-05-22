#!/usr/bin/env ruby
# display_instruction(): This method wil welcome users and ask whether to display instructions or not.
puts 'Wellcome to the tic-tac-toe geme!'
# Identify players
player_one_name = ''
player_two_name = ''
until String === player_one_name && !player_one_name.empty?
  puts 'Player One: What is your name?'
  player_one_name = gets.chomp
end
puts "The Player One name is #{player_one_name}."

until String === player_two_name && !player_two_name.empty?
  puts 'Player Two: What is your name?'
  player_two_name = gets.chomp
end
puts "The Player Two name is #{player_two_name}."

# it does not reject invalid data and ask me to put in a valid data

# I cannot win, lose or draw the game

# When I play, the board is not changing, accepting the inputs

input_symb1 = ''
# input_symb2 = ''
until %w[X O].include?(input_symb1)
  puts 'Please choose between X and O'
  input_symb1 = gets.chomp.upcase! # Read player option from the user.
end
puts "#{player_one_name} has chosen #{input_symb1} as his game symbol."
input_symb2 = if input_symb1 == 'O'
                'X'
              else
                'O'
    #   player_one = User.new("O")
    #   player_two = User.new("X")

  end
#   player_one = User.new("X")
#   player_two = User.new("O")
puts "#{player_two_name} will play with the game #{input_symb2}"

# play_record = {} # Record the players' input in the hash to represent an array.

# current_board = Board.new(player_one, player_two)

# display_board(current_board)
puts '1 | 2 | 3'
puts '4 | 5 | 6'
puts '7 | 8 | 9'
puts ''

# play(player_one, player_two, current_board)

puts ''
# player_one_choice = 0
# player_two_choice = 0
winner = false
played_one = false
played_two = true
count = 0
input_arr = []

check_input = [1, 2, 3, 4, 5, 6, 7, 8, 9]

while count < 9 && !winner
  while !played_one && played_two
    puts 'Player One turn Please choose between 1...9'
    player_one_choice = gets.chomp # Read player option from the user
    next unless check_input.include?(player_one_choice)
    input_arr.push([input_symb1, player_one_choice]) # unless !check_input.include?(player_one)
    check_input.delete(player_one_choice)
    count += 1
    played_one = true
    played_two = false
  end
  while !played_two && played_one
    puts 'Player Two turn Please choose between 1...9'
    player_two_choice = gets.chomp # Read player option from the user
    next unless check_input.include?(player_two_choice)

    input_arr.push([input_symb2, player_two_choice]) # unless !check_input.include?(player_one)
    check_input.delete(player_two_choice)
    count += 1
    played_one = false
    played_two = true
  end

  # winner = play(player_one, player_two, current_board)

  # winner = play(player_one, player_two, current_board)

end
print input_arr

# check_results(player_one, player_two, play_record)

# display_results()
# winner()
