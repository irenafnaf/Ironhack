class Game
	def initialize(board)
		@board = board
		@player_1 = "O"
		@player_2 = "X"
		@counter = 0
	end

	def current_player
		turn_1 = " "
		turn_2 = " "
		current_player = " "
		if @counter.odd?
			current_player = @player_1
		else
			current_player = @player_2
		end
	end

	def take_turns
		puts "It's #{current_player}'s turn, enter where you want your mark."
		user_input = gets.chomp
		@board.add_character(user_input.split(","), current_player)
		@board.show_board

		if @board.winner? 
			puts "You won!"
		elsif @counter >= 8
			puts "Nobody Won...Waaa Waaa Waaaaaa"
				
		else
			@counter += 1
			puts @counter
			# puts "It's #{current_player}'s turn, enter where you want your mark."
			# # user_input = gets.chomp
			# # @board.add_character(user_input.split(","), current_player)
			# # @board.show_board
			take_turns
		end

		# if @board.winner? == false
		# 			puts "Game Over"
		# end
	end
end
