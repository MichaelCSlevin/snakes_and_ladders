require("minitest/autorun")
require("minitest/rg")

require_relative("../dice")

class TestDice < MiniTest::Test

  def test_roll()
    dice = Dice.new()
    assert(dice.roll().between?(0,7))
  end


end
