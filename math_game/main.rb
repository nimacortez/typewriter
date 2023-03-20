require ".questions.rb"
require "./players.rb"
require "./score.rb"

def math_game
  p1 = Players.new
  p2 = Players.new
  game_score - Score.new(p1, p2)

  while p1.score > 0 && p2.score > 0
  game_score.set_turn

  question = Question.new
  game_score.eval = question.question_evaluator

  game_score.end_of_round
  end

end

math_game 