require("minitest/autorun")
require("minitest/rg")

require_relative("../ladder")

class TestLadder < MiniTest::Test
  def setup()
    @ladder1 = Ladder.new(2, 4)
  end

  def test_return_start()
    assert_equal(2, @ladder1.return_start())
  end

  def test_return_length()
    assert_equal(4, @ladder1.return_length())
  end



end
