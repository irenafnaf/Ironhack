class Game
	def initialize(board)
		@board = board
	end

	def make_move(starting_coords, ending_coords)
		starting_x = starting_coords[0]
		starting_y = starting_coords[1]
		ending_x = ending_coords[0]
		ending_y = ending_coords[1]	

		if @board.ready_to_move(starting_coords, ending_coords)
			@board.move_piece!(starting_x, starting_y, ending_x, ending_y)
			"Good Move!"
		else
			"You cannont move there"
		end
	end
end


