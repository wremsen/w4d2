require_relative "piece"
require_relative "modules"

class Bishop < Piece
    include Slidable

    def symbol
        return :B
    end 

    private 
    def move_dirs
        
    end 
end 
