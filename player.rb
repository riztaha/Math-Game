class Player
  attr_accessor :lives, :score
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def greet
    puts "Welcome #{@name}, you start off with 3 lives."
  end

  def to_s
    @name
  end

  def isAlive?
    true if lives > 0
  end

  def score_count
    puts "#{@name} has a score of #{@score}"
  end
end
