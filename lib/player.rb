class Player
  DEFAULT_HP = 60

  attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def deduct_hp(points)
    @hp -= points
  end

end
