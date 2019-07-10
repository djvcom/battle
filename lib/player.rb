class Player
  DEFAULT_HP = 60

  attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(player)
    player.hp -= 10
  end

end
