
class Attack
  attr_reader  :defending_player, :current_player
  def initialize(defending_player, current_player)
    @current_player = current_player
    @defending_player = defending_player
  end

  def attack
    @defending_player.deduct_hp
  end


end
