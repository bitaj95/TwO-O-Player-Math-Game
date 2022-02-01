require "./math_problem"
require "./players"

class Game
  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @active_player = @p1
    puts "Let's begin! Player 1, it is your turn. "
  end
  # Switch turns between two players
  def switch_player
    if @active_player == @p1
      @active_player = @p2
      print "Player 2, it is your turn. "
    else 
      @active_player = @p1
      print "Player 1, it is your turn. "
    end
  end
  def play
    question = Math_problem.new(@active_player)
    question.ask
    question.check_answer
    @active_player.lives_left
    puts "P1: #{@p1.lives_left}/3 vs P2: #{@p2.lives_left}/3"

    if @active_player.lives_left == 0
      puts "--- GAME OVER --- #{@active_player.name}, you lose!"
    else
      puts "------  NEW TURN  ------"
      self.switch_player
      self.play
    end
  end
end

