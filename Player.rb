class Player

  attr_accessor :name, :lives, :lose_life

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def lose_life
    @lives = @lives -1
    puts "lost life! Now at #{@lives}"
  end
end
