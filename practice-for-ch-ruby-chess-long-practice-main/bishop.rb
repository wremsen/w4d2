require_relative "piece"
require_relative "slideable"

class Bishop < Piece
    include Slidable

    def symbol
        "♗".colorize(color)
    end 

    private 
    def move_dirs
        diag_dirs
    end 
end 
