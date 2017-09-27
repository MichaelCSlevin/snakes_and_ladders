require("minitest/autorun")
require("minitest/rg")

require_relative("../snake")

class TestSnake < MiniTest::Test
  def setup()
    @snake1 = Snake.new(5, 2)
  end

  def test_return_start()
    assert_equal(5, @snake1.return_start())
  end

  def test_return_length()
    assert_equal(2, @snake1.return_length())
  end





end
