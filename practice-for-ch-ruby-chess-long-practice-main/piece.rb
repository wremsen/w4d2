require 'colorize'

class Piece

    attr_reader :color, :pos, :board

    def initialize (color, board, pos)
        @color = color
        @board = board
        board[pos] = self
        @pos = pos
    end 

    def to_s
        
    end 

    def empty?

    end 

    def valid_move?

    end 

    def pos=(val)
        @pos = val
    end 

    def symbol 
        raise "Not implemented"
    end 

    private
    def move_into_check?(end_pos)

    end 

    def inspect
        self.symbol
    end 


end

