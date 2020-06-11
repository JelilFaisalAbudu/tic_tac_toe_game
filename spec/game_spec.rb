require_relative '../lib/game_board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

describe Game do
  let(:player_one) { Player.new('Jelil', 'X') }
  let(:player_two) { Player.new('Astero', 'O') }
  let(:players) do
    { player_one.player_name => player_one.player_marker,
      player_two.player_name => player_two.player_marker }
  end
  let(:game) { Game.new(players) }

  context '#switch_players' do
    it 'returns true if the other player becomes current player and vice-versa' do
      expect(game.switch_players).to eql(%w[Astero Jelil])
    end
  end

  context '#switch_players' do
    it 'returns false if the other player does not become current player and vice-versa' do
      expect(game.switch_players).not_to eql(%w[Jelil Astero])
    end
  end

  context '#display_game_board' do
    let(:board_cell) { ['', 1, 2, 3, 4, 5, 6, 7, 8, 9] }
    let(:true_board) do
      "
         |     |
      #{board_cell[1]}  |  #{board_cell[2]}  |  #{board_cell[3]}
    _____|_____|_____
         |     |
      #{board_cell[4]}  |  #{board_cell[5]}  |  #{board_cell[6]}
    _____|_____|_____
         |     |
      #{board_cell[7]}  |  #{board_cell[8]}  |  #{board_cell[9]}
         |     |
    "
    end

    it 'returns true if the actual game board is displayed' do
      expect(game.display_game_board).to eql(true_board) 
    end
  end
end
