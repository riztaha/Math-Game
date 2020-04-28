class Question
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def to_s
    "What is the answer to: #{@number1} + #{@number2} = __?"
  end

  def answer?(answer)
    @number1 + @number2 == answer
  end
end
