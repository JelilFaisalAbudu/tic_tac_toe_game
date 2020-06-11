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
end
