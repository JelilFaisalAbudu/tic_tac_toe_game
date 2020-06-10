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
end
