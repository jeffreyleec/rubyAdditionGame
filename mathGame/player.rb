
class Player
  @@number_of_players = 0

  attr_reader :score, :currentPlayer

  def initialize
    @@number_of_players +=1
    
    self.currentPlayer = "#{@@number_of_players}"
    self.score = 3
  end 

  def lose_point
    self.score -= 1
  end

  def final_score
    "#{score}/3"
  end

  protected
  attr_writer :score, :currentPlayer
end