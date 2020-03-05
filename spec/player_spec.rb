require 'player'

describe Player do


  subject(:player1) { described_class.new("player1") }
  subject(:player2) { described_class.new("player2") }
  it "can return player name" do
    expect(player1.name).to eq("player1")
  end

  it "can deduct HP" do
    expect{ player2.deduct_hp }.to change{ player2.current_hp }.by -10
  end

  it "can attack a player" do
    expect(player2).to receive(:deduct_hp)
    player1.attack(player2)
    # expect(player1.attack(player2)).not_to raise_error
  end






end
