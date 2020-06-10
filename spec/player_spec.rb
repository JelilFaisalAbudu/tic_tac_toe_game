require './lib/player.rb'

describe Player do
  let(:player) { Player.new('Jelil', 'X') }
  let(:name) { player.player_name }
  let(:marker) { player.player_marker }

  context '#player\'s name' do
    it 'returns the first argument as string object which is the player\'s name.' do
      expect(name).to eql('Jelil')
    end
  end

  context '#player\'s marker' do
    it 'returns X as second argument which is the player\'s marker.' do
      expect(marker).to eql('X')
    end
  end
end
