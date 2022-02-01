class Player
  def initialize(name)
    @lives = 3
    @name = name
  end
  
  def lose
    @lives -= 1
  end
  
  def lives_left
    @lives
  end

  def name
    @name
  end
end