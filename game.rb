class Game
  def initialize(name, players)
    @name = name
    @players = players
  end

  def get_game_name()
    return @name
  end


  def player_names
    return @players
  end

  def rotate_players(players)
    players.rotate!()
    return players[0]
  end



  def get_roll(player)
    return player.roll()
  end

  def player_move(player)
    current_position = player.get_position()
    move = player.roll()
    player.set_position(move)
    puts "#{player.name} rolled a #{move}"
    return player.get_position()
  end

  def is_there_a_ladder(player_position, ladders)
    ladder_positions = []
    for ladder in ladders
      ladder_positions << ladder.return_start
    if ladder_positions.include?(player_position)
      return player_position += ladder.return_length
    end
    end
    return player_position
  end

  def is_there_a_snake(player_position, snakes)
    snakes_positions = []
    for snake in snakes
      snakes_positions << snake.return_start
      if snakes_positions.include?(player_position)
        return player_position += snake.return_length
      end
    end
    return player_position
  end



end
