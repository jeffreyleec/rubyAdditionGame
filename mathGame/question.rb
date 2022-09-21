class Question 

  attr_reader :number1, :number2
  def initialize
  @number1 = rand(1..20)
  @number2 = rand(1..20)
  end

  def askQ
  "What does #{number1} plus #{number2} equals?"
  end

end