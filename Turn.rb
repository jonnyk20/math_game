class Turn
  attr_accessor :active_player, :question, :input, :result
  def initialize(active_player)
    @active_player = active_player
    @question = Question.new
    puts "-----New Turn-----"
    ask
  end
  def ask
    puts "#{@active_player.name}: What is #{@question.a} #{@question.operator} #{@question.b}?"
    @input = gets.chomp.to_i
    evaluate(@input, @question.correct_answer)
  end
  def evaluate(input, correct_answer)
    if (input == correct_answer)
      puts "your answered correctly"
      
    else
      puts "nope"
      @active_player.lose_life
    end
  end

  def create_question
    @question = Question.new
  end
end