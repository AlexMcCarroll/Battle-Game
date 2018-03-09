require 'player'

describe Player do
  subject(:alex) { Player.new('Alex') }
  subject(:xela) { Player.new('Xela') }

  describe '#name' do
    it 'returns the name' do
      expect(alex.name).to eq 'Alex'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(alex.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'attacks the player' do
      expect { alex.hit }.to recieve(:recieve_damage)
      alex.attack(xela)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points by 1' do
      expect { alex.receive_damage }.to change { alex.hit_points }.by(-1)
    end
  end

end
