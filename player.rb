

class Player
  attr_accessor :player, :health, :total_lives

  def initialize(p, h, t)
    self.player = p
    self.health = h
    self.total_lives = t

  end

  def to_s
    "#{player} has #{health} of #{total_lives} lives remaining"
  end


end

