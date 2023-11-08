module Steppable

    def moves
        our_moves = []

        self.move_diffs.each do |diff|
            original = self.pos
            new_pos = original.zip(diff).map {|a, b| a + b}
            piece = self.board[new_pos]

            if self.board.valid_pos?(new_pos) == false
                next
            end
            if !piece.is_a?(NullPiece) && piece.color == self.color
                next
            end

            if !piece.is_a?(NullPiece) && piece.color != self.color
                our_moves << new_pos
                next
            end

            our_moves << new_pos
        end
        
        our_moves
    end









    private
    def move_diffs
        raise 'not implemented'
    end


end
