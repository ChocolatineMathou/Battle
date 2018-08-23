require 'player'

describe Player do
  subject(:hagrid) { Player.new('Hagrid') }
  subject(:dumbledore) { Player.new('Dumbledore') }

  describe '#name' do
    it 'returns the name of a player' do
      expect(hagrid.name).to eq('Hagrid')
    end
  end

  describe '#hit_points' do
    it 'returnes the hit points' do
      expect(hagrid.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { dumbledore.receive_damage }.to change { dumbledore.hit_points }.by(-10)
    end
  end
end
