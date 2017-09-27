require("minitest/autorun")
require("minitest/rg")

require_relative("../board")

class TestBoard < MiniTest::Test
  def setup()
    @board1 = Board.new([*0..30])
  end

  def test_get_length()
    assert_equal(31, @board1.get_length())
  end





end
