# Create a 2-Player math game where players take turns to answer simple math addition problems.
# A new math question is generated for each turn by picking two numbers between 1 and 20.
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

class Question 

  attr_reader :turn
  def initialize()
    @answer = nil
    @turn = 1  # 1 or 2
  end

  def generate_question()
    number_1 = rand(10)
    number_2 = rand(10)
    @answer = number_1 + number_2
    puts "Player #{turn}: " + "What does #{number_1} plus #{number_2} equal?"
  end

  def validate_answer()
    if(@answer == gets.chomp().to_i)
      puts "Player #{turn}: " + "Yes, you are correct."
      return true
    elsif
      puts "Player #{turn}: " + "Seriously? No!"
      return false
    end
  end

  def manage_round()
    if(@answer != nil) 
      puts "----- NEW TURN -----"
      @turn == 1 ? @turn = 2 : @turn = 1   
    end
  end

end
