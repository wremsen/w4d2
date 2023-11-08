require_relative "piece"
require_relative "modules"

class Rook < Piece
    include Slidable

    def symbol
        ''
    end 

    private 
    def move_dirs
        horizontal_vert_dirs
    end 
end 
