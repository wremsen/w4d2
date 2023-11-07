require_relative "piece"
require_relative "modules"

class Rook < Piece
    include Slidable

    def symbol
        return :R
    end 

    private 
    def move_dirs
        
    end 
end 
