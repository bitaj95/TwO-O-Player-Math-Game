class Math_problem
  def initialize(active_player)
    @number_1 = (rand(1..20)) 
    @number_2 = (rand(1..20)) 
    @active_player = active_player
  end
  def ask
    print "What is #{@number_1} + #{@number_2}? "
    @player_answer = gets.chomp.to_i
    @correct_answer = @number_1 + @number_2
  end
  def check_answer
    if @player_answer == @correct_answer
      puts "YES! You are correct! 🤩"
    else 
      puts "Seriously? No! 😡"
      @active_player.lose
    end
  end
end