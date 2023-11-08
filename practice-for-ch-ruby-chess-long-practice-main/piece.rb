class Piece

    attr_reader :color, :pos, :board

    def initialize (color, board, pos)
        @color = color
        @board = board
        @pos = pos
        @symbol = nil
    end 

    def to_s
        @symbol.to_s
    end

    def empty?

    end 

    def valid_move?(pos)
        row = pos[0]
        col = pos[1]
        return (0..7).to_a.include?(row) && (0..7).to_a.include?(col)
    end 

    def pos=(val)
        @pos = val
    end 

    # def symbol 
    #     puts "symbol"
    # end 

    private
    def move_into_check?(end_pos)

    end 


end

