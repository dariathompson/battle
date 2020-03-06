class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @count = 1
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def attack
    @players[@count].receive_damage
    @count += 1
    @count = 0 if @count > 1 
  end

  def current_turn
    @players[@count]
  end
  def not_turn
    @players[@count-1]
  end


end