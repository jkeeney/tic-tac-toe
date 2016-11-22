class Gameboard
	attr_accessor :board_contents

	def initialize
		#initialize an empty board filled with spaces
		@board_contents = {}
		1.upto(9) { |x| @board_contents[x] = ' ' }
	end

	def display_board
		puts
		puts '     |     |     '
		puts "  #{@board_contents[1]}  |  #{@board_contents[2]}  |  #{@board_contents[3]}  "
		puts '_____|_____|_____'
		puts '     |     |     '
		puts "  #{@board_contents[4]}  |  #{@board_contents[5]}  |  #{@board_contents[6]}  "
		puts '_____|_____|_____'
		puts '     |     |     '
		puts "  #{@board_contents[7]}  |  #{@board_contents[8]}  |  #{@board_contents[9]}  "
		puts '     |     |     '
		puts
	end

end