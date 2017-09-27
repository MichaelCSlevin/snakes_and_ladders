require_relative("./game")
require_relative("./snake")
require_relative("./player")
require_relative("./dice")
require_relative("./ladder")

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

puts "Hello and welcome to #{@game1.get_game_name}!!!"
gets.chomp
puts "Our players today are the fantastic #{@player1.name}, the amazing #{@player2.name} and the spectacular #{@player3.name}!!!"
gets.chomp
puts "#{@player1.name} rolls the dice"
@game1.player_move(@player1)
puts "#{@player1.name} has now moved to square #{@player1.get_position}!"
puts "#{@player2.name}'s turn!"
