module MathGame

	class Player

	  attr_reader :name, :lives, :score
	  attr_writer :lives, :score

		def initialize(name)
			@name = name
			@score = 0
			@lives = 3
		end

		def is_alive?
			@lives > 0
		end

	end

end
