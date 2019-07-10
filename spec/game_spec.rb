require 'game'

describe Game do
  subject(:game) { described_class.new(player_two, player_two)}

  describe '#attack' do
      let(:player_two) {double :player, hp:60}
      before do
      allow(player_two).to receive(:deduct_hp)
        it 'deducts 10 points from player two' do
          subject.attack(player_two)
          expect(player_two).to receive(:deduct_hp).with(10)
        end
    end
  end
end
