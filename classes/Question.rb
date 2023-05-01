class Question
  NUMBER_RANGE = 20

  def initialize
    @question = ""
    @answer = nil

    create_question
  end

  attr_reader :question
  attr_reader :answer

  def to_s
    @question
  end

  def create_question
    numbers = [rand(1...NUMBER_RANGE), rand(1...NUMBER_RANGE)]
    operators = ['plus', 'minus', 'times', 'divide by']
    operator = operators.sample
    
    @question = "What is #{numbers[0]} #{operator} #{numbers[1]}?"
    
    case operator
    when operators[0]
      @answer = numbers[0] + numbers[1]
    when operators[1]
      @answer = numbers[0] - numbers[1]
    when operators[2]
      @answer = numbers[0] * numbers[1]
    when operators[3]
      @answer = numbers[0] / numbers[1]
      @question = "How many times does #{numbers[0]} #{operator} #{numbers[1]} to the nearest whole number?"
    end
    
  end
end