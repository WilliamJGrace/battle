
class Game
  attr_reader :players , :current_turn, :current_player
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1

  end

  def attack(player)
    player.deduct_hp
    switch_players
  end

  def switch_players
    if @current_player == player1
      @current_player = player2
    else
      @current_player = player1
    end
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end
end
