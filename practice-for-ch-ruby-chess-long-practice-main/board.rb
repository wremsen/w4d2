require_relative 'pieces'


class Board
    attr_reader :rows

    def initialize
        @rows = Array.new(8) {Array.new(8, NullPiece.instance)}

        populate
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
        # self[end_pos] = piece
        # self[start_pos] = nil
        self[end_pos], self[start_pos] = self[start_pos], self[end_pos]

        # piece = @rows[start_pos[0]][start_pos[1]]
        # @rows[end_pos[0]][end_pos[1]] = piece
        # @rows[start_pos[0]][start_pos[1]] = nil
    end 

    def valid_pos?(pos)
        row = pos[0]
        col = pos[1]
        return (0..7).to_a.include?(row) && (0..7).to_a.include?(col)
    end



    private
    def populate
        self.pawn_row_gen
        self.back_row_gen

    end

    def back_row_gen
        pieces = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
        @rows.each_with_index do |row, i|
            if i == 0
                pieces.each_with_index do |ele, j|
                    @rows[i][j] = ele.new(:black, self, [i, j])
                end 

            end 
            if i == 7
                pieces.each_with_index do |ele, j|
                    @rows[i][j] = ele.new(:white, self, [i, j])
                end 

            end 
        end 

    end

    def pawn_row_gen
        pawn_rows = [1, 6]
        @rows.each_with_index do |row, i|
            if pawn_rows.include?(i) && i == 1
               row.each_with_index do |ele, j|
                ele = Pawn.new(:black, self, [i, j])
               end 
            end
            if pawn_rows.include?(i) && i == 6
               row.each_with_index do |ele, j|
                ele = Pawn.new(:white, self, [i, j])
               end 
            end
        end 
        
        
    end


end

board = Board.new
p board[[0,0]]

