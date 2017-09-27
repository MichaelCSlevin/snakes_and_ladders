require("minitest/autorun")
require("minitest/rg")

require_relative("../player")
require_relative("../dice")

class TestPlayer < MiniTest::Test
  def setup()
    @dice = Dice.new()
    @player1 = Player.new("Jim", 0, @dice)
    @player2 = Player.new("Spock", 0, @dice)
  end

  def test_roll_dice()
    assert(@player1.roll_dice().between?(0,7))
  end

  def test_get_position
    assert_equal(0, @player1.position())
  end

  def test_set_position()
    assert_equal(3, @player1.set_position(3))
  end



end
