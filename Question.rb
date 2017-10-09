class Question
  attr_accessor :a, :b, :operator, :test

  def initialize
    @operator = [:+, :-].sample
    @a = rand(1..20)
    @b = rand(1..20)
  end

  def correct_answer
    a.send(operator, b)
  end
end