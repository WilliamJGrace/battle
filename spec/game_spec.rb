require 'game'

describe Game do

  subject(:game){described_class.new(player1, player2)}
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  it "can attack a player" do
    expect(player2).to receive(:deduct_hp)
    game.attack(player2)
  end

  it "returns player1 and returns player 2" do
    expect(game.player1).to eq(player1)
    expect(game.player2).to eq(player2)
  end

  it "starts as player1" do
    expect(game.current_player).to eq(player1)
  end

  it "switches players after turn" do
    game.switch_players
    expect(game.current_player).to eq(player2)
  end





end
