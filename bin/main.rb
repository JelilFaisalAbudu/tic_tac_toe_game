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

# rubocop :enable
