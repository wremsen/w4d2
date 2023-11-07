require_relative 'piece'

class Board
    attr_reader :rows

    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}
        @rows.each_with_index do |row, i|
            if [0, 1, 6, 7].include?(i)
                row.map! {|ele| ele = Piece.new}
            end
        end
    end

    def [](pos) 
        row = pos[0]
        col = pos[1]
        return @rows[row][col]
    end 

    def []=(pos, val)
        row = pos[0]
        col = pos[1]
        @rows[row][col] = val
    end 

    def move_piece(start_pos, end_pos)
        raise "No piece there" if !self[start_pos].is_a?(Piece)

        piece = self[start_pos]
        self[end_pos] = piece
        self[start_pos] = nil

        # piece = @rows[start_pos[0]][start_pos[1]]
        # @rows[end_pos[0]][end_pos[1]] = piece
        # @rows[start_pos[0]][start_pos[1]] = nil
    end 



end

board = Board.new
p board[[0,0]]

