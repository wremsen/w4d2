require_relative "piece"
require_relative "modules"

class Queen < Piece
    include Slidable

    def symbol
        return :Q
    end 

    private 
    def move_dirs
        
    end 
end 
