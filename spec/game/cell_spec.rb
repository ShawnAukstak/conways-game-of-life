RSpec.describe Cell do
  describe '#alive?' do
    context 'when alive is true' do
      it 'returns true' do
        cell = Cell.new
        cell.spawn

        expect(cell).to be_alive
      end
    end

    context 'when alive is false' do
      it 'returns false' do
        cell = Cell.new
        cell.die

        expect(cell).not_to be_alive
      end
    end
  end

  describe '#dead?' do
    context 'when alive is true' do
      it 'returns false' do
        cell = Cell.new
        cell.spawn

        expect(cell).not_to be_dead
      end
    end

    context 'when alive is false' do
      it 'returns true' do
        cell = Cell.new
        cell.die

        expect(cell).to be_dead
      end
    end
  end

  describe '#to_s' do
    context 'when alive is true' do
      it 'returns 1' do
        cell = Cell.new
        cell.spawn

        expect(cell.to_s).to eq '*'
      end
    end

    context 'when alive is false' do
      it 'returns 0' do
        cell = Cell.new
        cell.die

        expect(cell.to_s).to eq ' '
      end
    end
  end
end
