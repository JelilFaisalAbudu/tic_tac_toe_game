require_relative 'lib/game_board.rb'
require_relative 'lib/message.rb'

class Game
  attr_reader :players, :board_instance, :current_player, :other_player, :message_instance
  def initialize(players, board = Board.new, message = Message.new)
    @players = players
    @board_instance = board
    @message_instance = message
    @players_names = @players.keys
    @players_markers = @players.values
  end

  def switch_players
    @current_player, @other_player = @other_player, @current_player
  end

  def display_game_board
    @board_instance.display_board
  end

  def make_a_move
    @message_instance.move_msg_to(current_player) # msg(move_msg)
    @pos = gets.chomp.to_i
    if @board_instance.valid_move?(@pos)
      @board_instance.update_board(@players[@current_player], @pos)
    else
      @board_instance.display_board
      @message_instance.invalid_move_msg # msg(invalid_msg)
      make_a_move
    end
  end

  def winner?(player_marker)
    @board_instance.win_comb.each do |group|
      return true if group.all?(player_marker)
    end
    false
  end

  def draw?
    @last_index = @players.size - 1
    @board_instance.board.all?(String)
  end

  def play
    @current_player, @other_player = @players_names.shuffle
    @message_instance.first_player(current_player)
    @message_instance.give_msg(display_game_board)
    loop do
      make_a_move
      if winner?(@players[@current_player])
        @message_instance.give_msg(display_game_board)
        @message_instance.win_msg(current_player)
        return
      elsif draw?
        @message_instance.give_msg(display_game_board)
        @message_instance.draw_msg
        return
      else
        switch_players
      end
      @message_instance.give_msg(display_game_board)
    end
  end

  def reset_game_board
    @board_instance.board = ['', 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end
