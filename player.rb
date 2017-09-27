class Player
  def initialize(name, position, dice)
    @name = name
    @position = position
    @dice = dice
  end

  def name
    return @name
  end

  def roll_dice
    return @dice.roll()
  end

  def position()
    return @position
  end

  def set_position(value)
    @position += value
    return @position
  end

end
