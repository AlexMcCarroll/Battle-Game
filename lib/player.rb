class Player
  DEFAULT_HIT_POINTS = 5
  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.hit
  end

  def hit
    unless @hit_points.zero?
      @hit_points -= 1
    end
  end
end
