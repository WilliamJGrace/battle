
class HealthPoints
  attr_reader :current_hp
  def initialize
    @current_hp = 100
  end
  def deduct(amount)
    @current_hp -= amount
  end
end
