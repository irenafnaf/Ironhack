class Bishop < Piece
	def can_move?(ending_x, ending_y)
		diagmovement_x = (@starting_x - ending_x).abs
		diagmovement_y = (@starting_y - ending_y).abs

		if(diagmovement_x == diagmovement_y) 
			true
		else
			false
		end	
	end
end