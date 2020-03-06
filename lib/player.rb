class Player
  attr_reader :name, :hit_points, :lost
  DEFAULT_HIT_POINTS = 60
  
  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
    @lost = false
  end

  def receive_damage
    @hit_points -= 10
    is_loser
  end
  def is_loser
    @lost = true if @hit_points <= 0
  end

end