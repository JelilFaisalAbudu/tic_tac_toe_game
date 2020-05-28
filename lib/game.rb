class Game
  attr_reader :players, :board_instance, :current_player, :other_player
  def initialize(players, board = Board.new)
    @players = players
    @board_instance = board
    @players_names = @players.keys
    @players_markers = @players.values
    @current_player, @other_player = @players_names.shuffle
  end

  def switch_players
    @current_player, @other_player = @other_player, @current_player
  end

  def display_game_board
    @board_instance.display_board
  end

  def make_a_move
    puts 'make a move'
    @pos = gets.chomp.to_i
    if @board_instance.valid_move?(@pos)
      @board_instance.update_board(@players[@current_player], @pos)
    else
      puts 'It is an invalid move.'
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
    puts "#{current_player} has randomly been selected as the first player"
    loop do
      # display_game_board
      make_a_move
      if winner?(@players[@current_player])
        puts "#{@players.key(@current_player)} wins"
        # puts game_over_message
        # display_game_board
        return
      elsif draw?
        puts 'It is draw'
        return
      else
        switch_players
      end
    end
  end
end
