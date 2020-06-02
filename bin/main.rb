#!/usr/bin/env ruby

require_relative '../lib/game_board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

puts '--------Welcome to Tic-Tac-Toe game--------'
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
while [name_one].include?(name_two)
  puts '#The name {name_one} already exists.'
  puts 'Second player\'s name'
  name_two = gets.chomp.capitalize!
end
puts "#{name_one}, your marker is #{letter_one}."
puts "#{name_two}, your marker is #{letter_two}."
puts ''

player_two = Player.new(name_two, letter_two)
players = { player_one.player_name => player_one.player_marker, player_two.player_name => player_two.player_marker }

game = Game.new(players)
play_again = true
while play_again
  game.shuffle_players
  puts game.message_instance.first_player(game.current_player)
  loop do
    puts game.message_instance.give_msg(game.display_game_board)
    puts game.message_instance.move_msg_to(game.current_player)
    pos = gets.chomp.to_i
    until game.board_instance.valid_move?(pos)
      puts game.display_game_board
      puts game.message_instance.invalid_move_msg
      puts "#{game.current_player}, make a valid move."
      pos = gets.chomp.to_i
    end
    game.board_instance.update_board(game.players[game.current_player], pos)
    if game.winner?(game.players[game.current_player])
      puts game.message_instance.give_msg(game.display_game_board)
      puts game.message_instance.win_msg(game.current_player)
      break
    elsif game.draw?
      puts game.message_instance.give_msg(game.display_game_board)
      puts game.message_instance.draw_msg
      break
    else
      game.switch_players
    end
  end
  game.reset_game_board
  puts 'Would you like to play again? (yes(y) or no(n))'
  play_again = gets.chomp.downcase
  play_again = %w[yes y].include?(play_again) ? true : false
end
puts 'Goodbye guys! See you next time.'
