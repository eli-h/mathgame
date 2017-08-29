module MathGame

	class Question

		def initialize
			@num1 = rand(1..20)
			@num2 = rand(1..20)
		end

		def print_question(name)
			puts "#{name}: What does #{@num1} and #{@num2} equal?"
		end

		def answer(answer)
			if answer.to_i == @num1 + @num2
				puts "correct!"
				return true
			else
				puts "incorrect!"
				return false
			end
		end

	end

end