require_relative "piece"
require_relative "modules"

class Knight < Piece
    include Steppable

    def symbol
        ''
    end 

    private 
    def move_dirs
        
    end 
end 