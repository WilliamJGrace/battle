
class Game
  attr_reader :players , :defending_player, :current_player
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
    @defending_player = player2

  end

  # def attack(player)
  #   player.deduct_hp
  #   switch_players
  # end

  def switch_players
    # if @current_player == player1
    #   @current_player = player2
    #   @defending_player = player1
    # else
    #   @current_player = player1
    #   @defending_player = player2
    # end
    @current_player, @defending_player = @defending_player, @current_player
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end
end
