require_relative('lib/board')
require_relative('lib/game')

my_board = Board.new
# my_board.show_board

# Testing Horizontally

# my_board.add_character([1,2], "X")
# puts "Hey I added a character"
# my_board.show_board

# my_board.add_character([1,1], "X")
# puts "Hey I added a character"
# my_board.show_board

# my_board.add_character([1,0], "X")
# puts "Hey I added a character"
# my_board.show_board

# my_board.winner?

# Testing Vertically

# my_board.add_character([0,0], "X")
# puts "Hey I added a character"
# my_board.show_board

# my_board.add_character([1,0], "X")
# puts "Hey I added a character"
# my_board.show_board

# my_board.add_character([2,0], "X")
# puts "Hey I added a character"
# my_board.show_board

# my_board.winner?

# Test Diagonally

# my_board.add_character([0,0], "X")
# puts "Hey I added a character"
# my_board.show_board

# my_board.add_character([1,1], "X")
# puts "Hey I added a character"
# my_board.show_board

# my_board.add_character([2,2], "X")
# puts "Hey I added a character"
# my_board.show_board

# my_board.winner?



new_game = Game.new(my_board)
new_game.take_turns




