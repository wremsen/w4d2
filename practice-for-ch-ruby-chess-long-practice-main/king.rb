require_relative "piece"
require_relative "modules"

class King < Piece
    include Slidable

    def symbol
        return :👑
    end 

    private 
    def move_diffs

    end 
end 