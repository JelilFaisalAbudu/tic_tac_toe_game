#!/usr/bin/env ruby

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

# rubocop :enable
