require 'player'

describe Player do
  it 'should return the name of the tested player' do
    tested_name = Player.new("Mittens")
    expect(tested_name.name).to eq "Mittens"
  end
end
