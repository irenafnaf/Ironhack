require_relative('lib/piece')
require_relative('lib/rook')
require_relative('lib/bishop')
require_relative('lib/queen')
require_relative('lib/king')
require_relative('lib/knight')
require_relative('lib/white_pawn')
require_relative('lib/black_pawn')
require_relative('lib/board')
require_relative('lib/game')


# # Rook Tests
# white_rook = Rook.new(1, 1)
# puts "Good Rook Moves"
# puts white_rook.can_move?(1, 5)
# puts white_rook.can_move?(5, 1)
# puts "Bad Rook Moves"
# puts white_rook.can_move?(5, 3)

# # Bishop Tests
# white_bishop = Bishop.new(1,1)
# puts "Bad Bishop Moves"
# puts white_bishop.can_move?(3, 1)
# puts "Good Bishop Moves"
# puts white_bishop.can_move?(4, 4)

# # Queen Tests
# white_queen = Queen.new(1, 1)
# puts "Good Queen Moves"
# puts white_queen.can_move?(1, 3)
# puts "Bad Queen Moves"
# puts white_queen.can_move?(2, 3)

# # King Moves
# white_king = King.new(3, 3)
# puts "Good King Moves"
# puts white_king.can_move?(4, 3)
# puts "Bad King Moves"
# puts white_king.can_move?(5, 3)

# # Knight
# white_knight = Knight.new(3, 3)
# puts "Good Knight Moves"
# puts white_knight.can_move?(2, 5)
# puts "Bad Knight Moves"
# puts white_knight.can_move?(4, 4)

# # White Pawn
# white_pawn = WhitePawn.new(3, 2)
# puts "Good White Pawn Moves"
# puts white_pawn.can_move?(3, 4)
# puts "Bad White Pawn Moves"
# puts white_pawn.can_move?(4, 2)

# # Black Pawn
# black_pawn = BlackPawn.new(3, 7)
# puts "Good Black Pawn Moves"
# puts black_pawn.can_move?(3, 5)
# puts "Bad Black Pawn Moves"
# puts black_pawn.can_move?(3, 4)
board = [  # Empty Array to place other arrays with the rows and columns
			[], # Row array
			[],
			[],
			[],
			[],
			[],
			[],
			[],
			[]
		]

# Placing the pieces on the board
board[1][1] = Rook.new(1,1,"Black")
board[1][8] = Rook.new(8,1,"Black")
board[8][1] = Rook.new(1,8,"White")
board[8][8] = Rook.new(8,8,"White")

board[1][2] = Knight.new(2,1,"Black")
board[1][7] = Knight.new(7,1,"Black")
board[8][2] = Knight.new(2,8,"White")
board[8][7] = Knight.new(7,8,"White")

board[1][3] = Bishop.new(3,1,"Black")
board[1][6] = Bishop.new(6,1,"Black")
board[8][3] = Bishop.new(3,8,"White")
board[8][6] = Bishop.new(6,8,"White")

board[1][4] = King.new(4,1,"Black")
board[8][4] = King.new(4,8,"White")

board[1][5] = Queen.new(5,1,"Black")
board[8][5] = Queen.new(5,8,"White")

board[2][1] = BlackPawn.new(1,2,"Black")
board[2][2] = BlackPawn.new(2,2,"Black")
board[2][3] = BlackPawn.new(3,2,"Black")
board[2][4] = BlackPawn.new(4,2,"Black")
board[2][5] = BlackPawn.new(5,2,"Black")
board[2][6] = BlackPawn.new(6,2,"Black")
board[2][7] = BlackPawn.new(7,2,"Black")
board[2][8] = BlackPawn.new(8,2,"Black")

board[7][1] = WhitePawn.new(1,7,"White")
board[7][2] = WhitePawn.new(2,7,"White")
board[7][3] = WhitePawn.new(3,7,"White")
board[7][4] = WhitePawn.new(4,7,"White")
board[7][5] = WhitePawn.new(5,7,"White")
board[7][6] = WhitePawn.new(6,7,"White")
board[7][7] = WhitePawn.new(7,7,"White")
board[7][8] = WhitePawn.new(8,7,"White")

my_board = Board.new(board)
# my_board.ready_to_move([1,1],[1,3])

my_game = Game.new(my_board)
puts my_game.make_move([1,1], [1,3])



