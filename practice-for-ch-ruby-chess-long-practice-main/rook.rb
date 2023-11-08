require_relative "piece"
require_relative "slideable"

class Rook < Piece
    include Slidable

    def symbol
        "♜".colorize(color)
    end 

    private 
    def move_dirs
        horizontal_vert_dirs
    end 
end 
