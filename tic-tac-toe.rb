require_relative 'gameboard'
require_relative 'player'
require_relative 'gameplay'

board = Gameboard.new
player_x = Player.new('X', board)
player_o = Player.new('O', board)
game = Game.new(board, player_x, player_o)

board.display_board

while game.game_over == false do 
	game.player_turn
end