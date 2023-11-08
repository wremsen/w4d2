require_relative "piece"
require_relative "modules"

class Queen < Piece
    include Slidable

    def symbol
        "♛".colorize(color)
    end 

    private 
    def move_dirs
        
    end 
end 
