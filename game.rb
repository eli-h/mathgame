module MathGame

	class Game

	  def initialize(p1, p2)
	    @current_player = p1
	    @next_player = p2
	  end

	  def change_player(p1, p2)
	  	puts "#{p1.name}: Lives: #{p1.lives}, Score: #{p1.score} | #{p2.name}: Lives: #{p2.lives}, Score: #{p2.score}"
	  	@current_player = p2
	  	@next_player = p1
	  end
    
    def start_game
    	while @next_player.is_alive? do
	    	new_question = Question.new()
	    	new_question.print_question(@current_player.name)
	    	answer = gets.chomp
	    	if !new_question.answer(answer)
	    		@current_player.lives -= 1
	    	else
	    	  @current_player.score += 1
	    	end
	    	change_player(@current_player, @next_player)
      end
	    winner = @current_player.lives > 0 ? @current_player : @next_player
	    puts "#{winner.name} wins! Score: #{winner.score}"
	  end
	  
	end

end