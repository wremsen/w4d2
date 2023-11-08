require_relative "piece"
require_relative "steppable"

class King < Piece
    include Slidable

    def symbol
        "♚".colorize(color)
    end 

    private 
    def move_diffs
        directions = [
            [1,1], [1, -1],
            [-1, 1], [-1, -1],
            [0, 1], [0, -1],
            [1, 0], [-1, 0]
        ]
    end 
end 