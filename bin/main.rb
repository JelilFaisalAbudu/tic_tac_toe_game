
#!/usr/bin/env ruby
puts "Hello World!"
wellcome_message("O", "X")
input_symb = gets.chomp
if input_symb = "o" || input_symb = "O"
  player_one = User.new("O")
  player_two = User.new("X")
elsif input_symb = "x" || input_symb = "X"
  player_one = User.new("X")
  player_two = User.new("O")
else
  puts "Please choose between X and O"
end
play_record = []
current_board = Board.new(player_one, player_two)
display_board(current_board)
play(player_one, player_two, current_board)
check_results(player_one, player_tow, play_record)
display_results()
winner()