# rubocop :disable Metrics/AbcSize, Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
class Board
  attr_writer :board

  def initialize
    @board = ['', 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def draw_board
    "
         |     |
      #{@board[1]}  |  #{@board[2]}  |  #{@board[3]}
    _____|_____|_____
         |     |
      #{@board[4]}  |  #{@board[5]}  |  #{@board[6]}
    _____|_____|_____
         |     |
      #{@board[5]}  |  #{@board[8]}  |  #{@board[9]}
         |     |
    "
  end

  def display_board
    draw_board
  end

  def update_board(marker, pos)
    @board[pos] = marker
  end

  def winner?(player_marker)
    (@board[1] == player_marker && @board[2] == player_marker && @board[3] == player_marker) ||
      (@board[4] == player_marker && @board[5] == player_marker && @board[6] == player_marker) ||
      (@board[7] == player_marker && @board[8] == player_marker && @board[9] == player_marker) ||
      (@board[1] == player_marker && @board[4] == player_marker && @board[7] == player_marker) ||
      (@board[2] == player_marker && @board[5] == player_marker && @board[8] == player_marker) ||
      (@board[3] == player_marker && @board[6] == player_marker && @board[9] == player_marker) ||
      (@board[1] == player_marker && @board[5] == player_marker && @board[9] == player_marker) ||
      (@board[3] == player_marker && @board[5] == player_marker && @board[6] == player_marker)
  end

  def draw?
    @last_index = @board.size - 1
    @board[1, @last_index].all?(Integer)
  end

  def place_player_marker(marker, position)
    @board[position] = marker
  end

  def game_over
    return :winner if winner?
    return :draw if draw?

    false
  end
end

# rubocop :enable Metrics/AbcSize, Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
