class Game

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def attack(player)
    player.deduct_hp(10)
  end

end
