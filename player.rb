class Player

	attr_reader :symbol
	attr_accessor :finished

	def initialize (symbol, board)
		@symbol = symbol
		@board = board
		@finished = false
	end

	def take_turn (position)
		@finished = false
		if position > 9 || position < 1
			puts "Please enter a number from 1 to 9"
			@finished = false
		else
			if @board.board_contents[position] == ' '
				@board.board_contents[position] = @symbol
				@finished = true
			else
				puts "You can't place an #{@symbol} in that space."
				@finished = false
			end
		end
	end

end