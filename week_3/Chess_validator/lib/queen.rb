class Queen < Piece
	def can_move?(ending_x, ending_y)
		difference_x = (@starting_x - ending_x).abs
		difference_y = (@starting_y - ending_y).abs

		if(difference_x == 0 && difference_y != 0) ||
		  (difference_y == 0 && difference_x != 0) ||
		  (difference_x == difference_y) 	
			true
		else
			false
		end	
	end
end