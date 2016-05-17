class Board
	def initialize(board)
		@board = board
	end

	def can_move?(starting_x, starting_y, ending_x, ending_y)

		@board[starting_y][starting_x].can_move?(ending_x,ending_y)
	end

	def on_board?(ending_x, ending_y)
		if (ending_x <= 8 && ending_x >= 1) && (ending_y <= 8 && ending_y >= 1)
			true
		else 
			false
		end
	end

	def check_destination?(starting_x, starting_y, ending_x, ending_y)
		if (@board[ending_y][ending_x] == nil)
			true
		else
			if @board[starting_y][starting_x].color == @board[ending_y][ending_x]
				false
			else
				true
			end
		end
	end

	def ready_to_move(starting_coords, ending_coords)
		starting_x = starting_coords[0]
		starting_y = starting_coords[1]
		ending_x = ending_coords[0]
		ending_y = ending_coords[1]	

		if 	can_move?(starting_y,starting_x, ending_y, ending_x) &&
			on_board?(ending_x,ending_y) &&
			check_destination?(starting_y, starting_x, ending_y, ending_x)
			# puts "Good Move"
			true
		else
			# puts "Bad Move"
			false
		end
	end

	def move_piece!(starting_x, starting_y, ending_x, ending_y)
		@board[ending_y][ending_x] = @board[starting_y][starting_x]
		@board[starting_y][starting_x] = nil
	end
end

