#!/usr/bin/env ruby
# display_instruction(): This method wil welcome users and ask whether to display instructions or not.
puts 'Wellcome to the tic-tac-toe geme!'

input_symb1 = ''
# input_symb2 = ''
until %w[X O].include?(input_symb1)
  puts 'Please choose between X and O'
  input_symb1 = gets.chomp.upcase! # Read player option from the user.
end
puts "You have chosen #{input_symb1} as your game symbol."
input_symb2 = if input_symb1 == 'O'
                'X'
              else
                'O'
                #   player_one = User.new("O")
                #   player_two = User.new("X")

              end
#   player_one = User.new("X")
#   player_two = User.new("O")
puts "Your opponent will play with the game #{input_symb2}"

# play_record = {} # Record the players' input in the hash to represent an array.

# current_board = Board.new(player_one, player_two)

# display_board(current_board)
puts '1 | 2 | 3'
puts '4 | 5 | 6'
puts '7 | 8 | 9'
puts ''

# play(player_one, player_two, current_board)

puts ''
# player_one = 0
# player_two = 0
winner = false
played = false
count = 0
input_arr = []

# check_input = [1, 2, 3, 4, 5, 6, 7, 8, 9]

while count < 9 && !winner

  if !played
    puts 'Player One turn Please choose between 1...9'
    player_one = gets.chomp # Read player option from the user
    input_arr.push([input_symb1, player_one]) # unless !check_input.include?(player_one)
    count += 1
    played = true
  else
    puts 'Player Two turn Please choose between 1...9'
    player_two = gets.chomp # Read player option from the user
    input_arr.push([input_symb2, player_two]) # unless !check_input.include?(player_two)
    count += 1
    played = false

  end

  # winner = play(player_one, player_two, current_board)

  # winner = play(player_one, player_two, current_board)

end
print input_arr

# check_results(player_one, player_two, play_record)

# display_results()
# winner()
