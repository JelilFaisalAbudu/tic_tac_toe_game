
#!/usr/bin/env ruby
display_instruction() # This method wil welcome users and ask whether to display instructions or not.
input_symb = gets.chomp.upcase! # Read player option from the user.
if  input_symb == "O"
  player_one = User.new("O")
  player_two = User.new("X")
elsif input_symb == "X"
  player_one = User.new("X")
  player_two = User.new("O")
else
  puts "Please choose between X and O"
end
play_record = {} # Record the players' input in the hash to represent an array.
current_board = Board.new(player_one, player_two)
display_board(current_board)
play(player_one, player_two, current_board)
check_results(player_one, player_two, play_record)
display_results()
winner()