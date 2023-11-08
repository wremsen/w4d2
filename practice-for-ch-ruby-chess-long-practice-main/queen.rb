require_relative "piece"
require_relative "slideable"

class Queen < Piece
    include Slidable

    def symbol
        "♛".colorize(color)
    end

    

    private 
    def move_dirs
        horizontal_vert_dirs + diag_dirs
    end 
end 
