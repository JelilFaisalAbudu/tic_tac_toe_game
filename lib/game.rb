require_relative './game_board.rb'
require_relative './message.rb'

class Game
  attr_reader :players, :board_instance, :current_player, :other_player, :message_instance
  def initialize(players, board = Board.new, message = Message.new)
    @players = players
    @board_instance = board
    @message_instance = message
    @players_names = @players.keys
    @players_markers = @players.values
    @current_player, @other_player = @players_names.shuffle
  end

  def shuffle_players
    @current_player, @other_player = @players_names.shuffle
  end

  def switch_players
    @current_player, @other_player = @other_player, @current_player
  end

  def display_game_board
    @board_instance.display_board
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

  def reset_game_board
    @board_instance.board = ['', 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end
