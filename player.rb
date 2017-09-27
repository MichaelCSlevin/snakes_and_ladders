class Player
  def initialize(name, position, dice)
    @name = name
    @position = position
    @dice = dice
  end

  def name
    return @name
  end

  def roll()
    return @dice.roll()
  end

  def get_position()
    return @position
  end

  def set_position(value)
    @position += value
  end

end
