require 'player'

describe Player do
    subject(:sophia) {Player.new('Sophia')}
    subject(:daria) {Player.new('Daria')}

    describe '#name' do
      it 'stores the name' do
        expect(daria.name).to eq 'Daria'
      end
    end

    describe '#hit_points' do
      it 'returns the hit points' do
        expect(sophia.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

    describe '#attack' do
      it 'damages the player' do
        expect(daria).to receive(:receive_damage)
        sophia.attack(daria)
      end
    end

    describe '#receive_damage' do
      it 'reduces the player hit points' do
        expect {daria.receive_damage}.to change {daria.hit_points}.by(-10)
      end
    end
end