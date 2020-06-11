require_relative '../lib/game_board.rb'

describe Board do
  let(:board_cell) { ['', 1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let(:game_board) { Board.new }
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
  let(:false_board) do
    " #{board_cell[0]}
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

  context '#draw_board' do
    it 'returns true for the actual drawing of the game board' do
      expect(game_board.draw_board).to eql(true_board)
    end
  end

  context '#draw_board' do
    it 'returns true for the wrong drawing of the game board' do
      expect(game_board.draw_board).not_to eql(false_board)
    end
  end

  context '#display_board' do
    it 'returns true if the correct game board is displayed' do
      expect(game_board.display_board).to eql(true_board)
    end
  end

  context '#display_board' do
    it 'returns true if the wrong game board is displayed ' do
      expect(game_board.display_board).not_to eql(false_board)
    end
  end

  context '#in_range?' do
    it 'returns true if the chosen position is within bounds' do
      expect(game_board.in_range?(9)).to eql(true)
    end
  end

  context '#in_range?' do
    it 'returns false if the chosen position is out of bounds' do
      expect(game_board.in_range?(0)).to eql(false)
    end
  end

  context '#position_taken?' do
    it 'returns false for all the positions not taken by the player' do
      expect(game_board.position_taken?(4)).to eql(false)
    end
  end

  context '#position_taken?' do
    it 'returns true for all the positions not taken by the player' do
      game_board.update_board('X', 2)
      expect(game_board.position_taken?(2)).to eql(true)
    end
  end

  context '#valid_ move?' do
    it 'returns true if the position is within bounds and not yet taken' do
      expect(game_board.valid_move?(2)).to eql(true)
    end
  end

  context '#valid_ move?' do
    it 'returns false if the position is within bounds but already taken' do
      game_board.update_board('X', 7)
      expect(game_board.valid_move?(7)).to eql(false)
    end
  end

  context '#valid_ move?' do
    it 'returns false if the position is out of bounds' do
      expect(game_board.valid_move?(89)).to eql(false)
    end
  end

  context '#update_board' do
    it 'returns the player\'s marker of that index after it has been updated' do
      expect(game_board.update_board('X', 6)).to eql('X')
    end
  end

  context '#update_board' do
    it 'returns the player\'s marker of that index after it has been updated' do
      expect(game_board.update_board('X', 6)).not_to eql('O')
    end
  end
end
