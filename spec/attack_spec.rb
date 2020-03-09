require 'attack'

describe Attack do

  subject(:attack_ins) { described_class.new(player1, player2) }
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  # let(:current_hp) { 0 }

  it "can attack a player" do
    expect(player2).to receive(:deduct_hp)
    attack_ins.attack
  end
end
