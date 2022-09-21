class Game

 
  @@player = 0;
  # def game (player)
  def start(players)
    puts "----- NEW TURN -----"
    question = Question.new
    puts "Player #{players[0].currentPlayer}: #{question.askQ}"
    print "> "
    answer = gets.chomp.to_i
    if answer == question.number1 + question.number2
      puts "Player #{players[0].currentPlayer}: YES! You're correct."
    else
      players[0].lose_point
      puts "Player #{players[0].currentPlayer}: Seriously? No!"
    end

   
    if players[0].score == 0
      puts "Player #{players[1].currentPlayer} wins  with a score of #{players[1].final_score} \n----- GAME OVER -----\nGood Bye"
    else
      players.reverse!
      puts "P#{players[1].currentPlayer}: #{players[1].final_score} vs P#{players[0].currentPlayer}: #{players[0].final_score}"
      start(players)
    end
  end
end