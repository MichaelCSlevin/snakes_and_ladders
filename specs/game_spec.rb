require("minitest/autorun")
require("minitest/rg")

require_relative("../game")
require_relative("../snake")
require_relative("../player")
require_relative("../dice")
require_relative("../ladder")

class TestGame < MiniTest::Test
  def setup()
    @dice = Dice.new()
    @snake1 = Snake.new(5, -2)
    @snake2 = Snake.new(16, -8)
    @snake3 = Snake.new(29, -10)
    @snakes = [@snake1, @snake2, @snake3]
    @ladder1 = Ladder.new(7, 5)
    @ladder2 = Ladder.new(11, 10)
    @ladder3 = Ladder.new(17, 5)
    @ladders = [@ladder1, @ladder2, @ladder3]
    @player1 = Player.new("Tyrion", 0, @dice)
    @player2 = Player.new("Jon", 0, @dice)
    @player3 = Player.new("Daenerys", 0, @dice)
    @players = [@player1, @player2, @player3]
    @game1 = Game.new("Snakes and Ladders", @players)
  end
  #
  # def test_rotate_players()
  #   current_player = @game1.rotate_players(@players)
  #   assert_equal(@player2, current_player)
  # end
  #
  # def test_get_roll()
  #   assert(@game1.get_roll(@players[0]).between?(0,7))
  # end
  #
  # def test_player_move()
  #   current_position = @player1.get_position()
  #   assert(@game1.player_move(@player1) > current_position)
  # end
  #
  # def test_is_there_a_ladder()
  #   result = @game1.is_there_a_ladder(7, @ladders)
  #   assert_equal(12, result)
  # end
  #
  # def test_is_there_a_snake()
  #   result = @game1.is_there_a_snake(5, @snakes)
  #   assert_equal(3, result)
  # end
  #
  def
  #
  #
  #
  #
end
