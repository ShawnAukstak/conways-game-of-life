RSpec.describe BoardPreparer do
  describe '#prepare' do
    context 'when rand is 1' do
      it 'spawns the cell' do
        cell = double(die: nil, spawn: nil)
        board = double(cells: [cell])
        board_preparer = BoardPreparer.new(board)
        allow(board_preparer).to receive(:rand).with(2).and_return(1)

        board_preparer.prepare

        expect(cell).to have_received(:die).ordered
        expect(cell).to have_received(:spawn).ordered
      end
    end

    context 'when rand is 0' do
      it 'kills the cell' do
        cell = double(die: nil, spawn: nil)
        board = double(cells: [cell])
        board_preparer = BoardPreparer.new(board)
        allow(board_preparer).to receive(:rand).with(2).and_return(0)

        board_preparer.prepare

        expect(cell).to have_received(:die).ordered
        expect(cell).not_to have_received(:spawn)
      end
    end
  end
end
