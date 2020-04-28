class Game
  attr_accessor :player1, :player2, :playerTurn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @playerTurn = player1
  end
end
