#!/usr/bin/env ruby

puts '----------Welcome to Tic-Tac-Toe game----------'
puts 'Please choose a name and favourite letters to play with.'

puts 'First player\'s name'
name_one = gets.chomp.capitalize!
puts "#{name_one}, choose your favourite letter"
letter_one = gets.chomp.upcase!
player_one = Player.new(name_one, letter_one)

puts 'Second player\'s name'
name_two = gets.chomp.capitalize!
puts "#{name_two}, choose your favourite letter"
letter_two = gets.chomp.upcase!
while letter_two == letter_one
  puts "Letter #{letter_one} has already picked by #{name_one}."
  puts "#{name_two}, choose another favourite letter"
  letter_two = gets.chomp.upcase!
end
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
