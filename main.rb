require './question.rb'
require './player.rb'

def start_game 
  player_1 = Player.new("Player 1")
  player_2 = Player.new("Player 2")

  quiz = Question.new()  
  while player_1.score > 0 && player_2.score > 0
    quiz.manage_round()
    quiz.generate_question()
    if(!quiz.validate_answer())
      cur_player = (quiz.turn == 1) ? player_1 : player_2
      cur_player.score = cur_player.score - 1
    end  
    puts "P1:#{player_1.score}/3" + " vs P2: #{player_2.score}/3"
  end

  puts "----- GAME OVER -----"
  puts "Good bye!"
end

start_game()