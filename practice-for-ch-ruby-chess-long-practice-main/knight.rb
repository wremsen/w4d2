require_relative "piece"
require_relative "steppable"

class Knight < Piece
    include Steppable

    def symbol
        "♞".colorize(color)
    end 

    private 
    def move_dirs
        directions = [
        [-1, 2], [1, 2],
        [-2, 1], [2, 1],
        [-2, -1], [2, -1],
        [-1, -2], [1, -2]
    ]
    end 
end 