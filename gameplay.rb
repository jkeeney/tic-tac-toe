class Game

	attr_reader :current_player, :game_over

	def initialize (board, player1, player2)
		@board = board
		@player1 = player1
		@player2 = player2
		@current_player = @player1
		@game_over = false
		@turn_count = 0
	end

	def player_turn

		puts "It is now #{current_player.symbol}'s turn."

		while current_player.finished == false do

			if @current_player.finished == false
				puts "Where would you like to go?  "
				user_input = gets.chomp.to_i
				@current_player.take_turn(user_input)
			end

		end

		@turn_count += 1
		@board.display_board

		result

	end

	private


	def player_wins

		if @current_player.symbol == @board.board_contents[1] && @current_player.symbol == @board.board_contents[2] && @current_player.symbol == @board.board_contents[3] || 
			@current_player.symbol == @board.board_contents[4] && @current_player.symbol == @board.board_contents[5] && @current_player.symbol == @board.board_contents[6] ||
			@current_player.symbol == @board.board_contents[7] && @current_player.symbol == @board.board_contents[8] && @current_player.symbol == @board.board_contents[9] ||
			@current_player.symbol == @board.board_contents[1] && @current_player.symbol == @board.board_contents[4] && @current_player.symbol == @board.board_contents[7] ||
			@current_player.symbol == @board.board_contents[2] && @current_player.symbol == @board.board_contents[5] && @current_player.symbol == @board.board_contents[8] ||
			@current_player.symbol == @board.board_contents[3] && @current_player.symbol == @board.board_contents[6] && @current_player.symbol == @board.board_contents[9] ||
			@current_player.symbol == @board.board_contents[1] && @current_player.symbol == @board.board_contents[5] && @current_player.symbol == @board.board_contents[9] ||
			@current_player.symbol == @board.board_contents[7] && @current_player.symbol == @board.board_contents[5] && @current_player.symbol == @board.board_contents[3]
			@game_over = true
			puts "#{@current_player.symbol} wins!"
		end
	end

	def result

		player_wins
		

		if @game_over == false && @turn_count == 9
			@game_over = true			
			puts "The game has ended in a tie."
		else
			if @current_player == @player1
				@current_player = @player2
			else
				@current_player = @player1
			end
		end

		@current_player.finished = false

	end

end