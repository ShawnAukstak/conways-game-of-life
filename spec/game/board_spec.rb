RSpec.describe Board do
  describe '#print' do
    it 'prints board of cells' do
      cell = double(to_s: '0')
      cell_factory = double(new: cell)

      board = Board.new(4, cell_factory)

      expect(board.size).to eq 4
      expect { board.print }.to output("0 0 0 0\n" * 4).to_stdout
    end
  end
end
