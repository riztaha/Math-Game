require "./question"
require "./player"

class Game
  #   attr_accessor :player1, :player2, :playerTurn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @playerTurn = player1
  end

  def run
    question = Question.new
    puts "#{@playerTurn}'s turn to answer... #{question}"
    # playerAnswer = gets.chomp
    if (question.answer?(gets.chomp.to_i))
      puts "@@@@@@ That is the correct answer #{@playerTurn}! @@@@@@"
      @playerTurn.score += 1
      @playerTurn.score_count
    else
      puts "~~~~ Sorry, that is the wrong answer! You lose a life #{@playerTurn} ~~~~"
      @playerTurn.lives -= 1
      puts "#{@playerTurn} has #{@playerTurn.lives} lives left."
    end
    if (@playerTurn.isAlive?)
      next_turn
    else
      puts "You lose the game #{@playerTurn}"
      game_fin
    end
  end

  def next_turn
    puts "%%%%% Lives remaining #{@player1}: #{@player1.lives} & #{@player2}: #{@player2.lives} %%%%%%"
    if (@playerTurn == @player1)
      @playerTurn = @player2
    else
      @playerTurn = @player1
    end
    run
  end

  def game_fin
    winner = @player2.isAlive? ? @player2 : @player1
    puts "!!!!!!!! Game is finished !!!!!!!!"
    puts "#{winner} wins the game with #{winner.lives} lives and score of #{winner.score}"
  end
end
