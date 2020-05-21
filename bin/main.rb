#!/usr/bin/env ruby
# display_instruction(): This method wil welcome users and ask whether to display instructions or not.
puts 'Wellcome to the tic-tac-toe geme!'

input_symb = ''
until %w[X O].include?(input_symb)
  puts 'Please choose between X and O'
  input_symb = gets.chomp.upcase! # Read player option from the user.
end
puts "You have chosen #{input_symb} as your game symbol."
if input_symb == 'O'
  #   player_one = User.new("O")
  #   player_two = User.new("X")
  puts 'Your opponent will play with the game symbol X.'
else
  #   player_one = User.new("X")
  #   player_two = User.new("O")
  puts 'Your opponent will play with the game symbol O.'
end

# play_record = {} # Record the players' input in the hash to represent an array.
# current_board = Board.new(player_one, player_two)
# display_board(current_board)
# play(player_one, player_two, current_board)
# check_results(player_one, player_two, play_record)
# display_results()
# winner()
