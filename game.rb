class Game
  def initialize(name, players)
    @name = name
    @players = players
  end

  def name()
    return @name
  end

  def players()
    return @players
  end

  def rotate_players()
    @players.rotate!()
    return @players[0]
  end

  def roll(player)
    return player.roll()
  end

  def move(player)
    current_position = player.get_position()
    move = player.roll()
    player.set_position(move)
    puts "#{player.name} rolled a #{move}"
    return player.position()
  end

  def ladder?(player_position, ladders)
    ladder_positions = []
    for ladder in ladders
      ladder_positions << ladder.start()
      if ladder_positions.include?(player_position)
        return player_position += ladder.length()
      end
    end
    return player_position
  end

  def snake?(player_position, snakes)
    snakes_positions = []
    for snake in snakes
      snakes_positions << snake.return_start
      if snakes_positions.include?(player_position)
        return player_position -= snake.return_length
      end
    end
    return player_position
  end

  def welcome()
    puts "Hello and welcome to #{@name}!"
  end

end
