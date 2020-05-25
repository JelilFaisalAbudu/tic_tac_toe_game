#!/usr/bin/env ruby

# rubocop :disable Metrics/BlockNesting

def display_board(board_cells)
  puts "#{board_cells[1]} | #{board_cells[2]} | #{board_cells[3]}"
  puts '__|___|__'
  puts '  |   |'
  puts "#{board_cells[4]} | #{board_cells[5]} | #{board_cells[6]}"
  puts '__|___|__'
  puts '  |   |'
  puts "#{board_cells[7]} | #{board_cells[8]} | #{board_cells[9]}"
  puts ''
end

puts 'Wellcome to the tic-tac-toe geme!'

play_again = true
while play_again

  board = ['', 1, 2, 3, 4, 5, 6, 7, 8, 9]
  display_board(board)
  input_symb1 = ''
  until %w[X O].include?(input_symb1)
    puts 'Please choose between X and O to play with.'
    input_symb1 = gets.chomp.upcase! # Read player option from the user.
  end
  puts "You have chosen #{input_symb1} as your game symbol."
  input_symb2 = if input_symb1 == 'O'
                  'X'
                else
                  'O'
                end

  puts "Your opponent will play with the game #{input_symb2}"

  puts ''
  winner = false
  played = false

  count = 0

  while count < 9 && !winner
    display_board(board)
    if !played
      puts 'Player X\'s move. Please choose between 1...9'
      player_one = gets.chomp.to_i # Read player option from the user
      is_valid_choice = player_one >= 1 && player_one <= 9
      valid_move = board[player_one] != 'X' && board[player_one] != 'O'
      until is_valid_choice && valid_move
        display_board(board)
        if !valid_move
          puts 'Sorry! Cell already occupied. Please select the right cell.'
        else
          puts 'Invalid! You can only use cell numbers from cell 1..9'
          puts 'Select a valid cell number.'
        end
        player_one = gets.chomp.to_i
        is_valid_choice = player_one >= 1 && player_one <= 9
        valid_move = board[player_one] != 'X' && board[player_one] != 'O'
      end

      board[player_one] = input_symb1

      count += 1
      played = true
    else
      puts 'Player O\'s move. Please choose between 1...9'

      player_two = gets.chomp.to_i # Read player option from the user
      is_valid_choice = player_two >= 1 && player_two <= 9
      valid_move = board[player_two] != 'X' && board[player_two] != 'O'
      until is_valid_choice && valid_move
        display_board(board)
        if !valid_move
          puts 'Sorry! Cell already occupied. Please select the right cell.'
        else
          puts 'Invalid! You can only use cell numbers from cell 1..9'
          puts 'Select a valid cell number.'
        end
        player_two = gets.chomp.to_i
        is_valid_choice = player_two >= 1 && player_two <= 9
        valid_move = board[player_two] != 'X' && board[player_two] != 'O'
      end
      board[player_two] = input_symb2
      count += 1
      played = false

    end

  end
  puts 'Would you like to play again? (yes/y or no/n)'
  play_again = gets.chomp.downcase
  play_again = %w[yes y].include?(play_again) || false

end

puts 'See you for next time.'

# rubocop :enable Metrics/BlockNesting
