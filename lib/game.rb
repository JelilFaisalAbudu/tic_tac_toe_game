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

  # def make_move
  #   @cell_pos = gets.chomp.to_i
  #   if @board_instance.valid_move?(@cell_pos)
  #      @board_instance.update_board(@players[current_player], @cell_pos)
  #   else
  #     make_move
  #     puts display_game_board
  #   end
  # end

  def make_a_move
    puts 'make a move'
    @pos = gets.chomp.to_i
    if @board_instance.valid_move?(@pos)
      @board_instance.update_board(@players[@current_player], @pos)
    else
      puts 'It is an invalid move.'
    end
  end

  def play
    puts "#{current_player.name} has randomly been selected as the first player"
    loop do
      # display_game_board
      make_a_move
      if @board_instance.game_over
        puts game_over_message
        # display_game_board
        return
      else
        switch_players
      end
    end
  end
end
