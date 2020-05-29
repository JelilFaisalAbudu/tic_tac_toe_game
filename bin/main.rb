#!/usr/bin/env ruby

require_relative '../lib/game_board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

puts '----------Welcome to Tic-Tac-Toe game----------'
puts 'Please choose a name and favourite letters to play with.'

puts 'First player\'s name'
name_one = gets.chomp.capitalize!
letter_one = ''
until %w[X O].include?(letter_one)
  puts "#{name_one}, please choose between X and O to play with."
  letter_one = gets.chomp.upcase!
end
letter_two = letter_one == 'O' ? 'X' : 'O'
player_one = Player.new(name_one, letter_one)

puts 'Second player\'s name'
name_two = gets.chomp.capitalize!

puts "#{name_one}, your marker is #{letter_one}."
puts "#{name_two}, your marker is #{letter_two}."
puts ''

player_two = Player.new(name_two, letter_two)
players = { player_one.player_name => player_one.player_marker, player_two.player_name => player_two.player_marker }

game = Game.new(players)
play_again = true
while play_again
  game.play
  puts 'Would you like to play again? (yes/y or no/n)'
  play_again = gets.chomp.downcase
  play_again = %w[yes y].include?(play_again) || false
  game.reset_game_board
end

puts 'Goodbye guys! See you next time.'
