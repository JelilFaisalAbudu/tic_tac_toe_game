class Player
  attr_reader :player_name, :player_marker
  def initialize(player_name, player_marker)
    @player_name = player_name
    @player_marker = player_marker
  end
end
