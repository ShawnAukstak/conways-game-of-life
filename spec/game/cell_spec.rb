RSpec.describe Cell do
  describe '#alive?' do
    context 'when alive is true' do
      it 'returns true' do
        cell = Cell.new(alive: true)
        expect(cell).to be_alive
      end
    end

    context 'when alive is false' do
      it 'returns false' do
        cell = Cell.new(alive: false)
        expect(cell).not_to be_alive
      end
    end
  end

  describe '#dead?' do
    context 'when alive is true' do
      it 'returns false' do
        cell = Cell.new(alive: true)
        expect(cell).not_to be_dead
      end
    end

    context 'when alive is false' do
      it 'returns true' do
        cell = Cell.new(alive: false)
        expect(cell).to be_dead
      end
    end
  end

  describe '#to_s' do
    context 'when alive is true' do
      it 'returns 1' do
        cell = Cell.new(alive: true)
        expect(cell.to_s).to eq '*'
      end
    end

    context 'when alive is false' do
      it 'returns 0' do
        cell = Cell.new(alive: false)
        expect(cell.to_s).to eq '0'
      end
    end
  end

  describe '#die' do
    it 'kills the cell' do
      cell = Cell.new(alive: true)

      cell.die

      expect(cell).to be_dead
      expect(cell).not_to be_alive
    end
  end

  describe '#spawn' do
    it 'revives the cell' do
      cell = Cell.new(alive: false)

      cell.spawn

      expect(cell).not_to be_dead
      expect(cell).to be_alive
    end
  end
end
