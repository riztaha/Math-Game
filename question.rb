class Question
  def initialize
    @questionNumber = 1
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def answer(answer)
    @number1 + @number2 == answer
  end

  def nextQuestion
    @questionNumber += 1
  end
end
