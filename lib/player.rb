
class Player
  DEFEAULT_HP = 100
  attr_reader :name, :current_hp
  def initialize(name, current_hp = DEFEAULT_HP)
    @name = name
    @current_hp = current_hp
  end
  def deduct_hp
    @current_hp -= 10
  end

  
end
