

class Pawn < Piece


    def symbol
        '♟'.colorize(color)
    end

    def moves
        moves = []

        start_pos = self.pos
        new_pos = start_pos.zip(forward_dir).map {|a, b| a + b}


        # new_attack = start_pos.zip(side_attacks).map {|a, b| a + b}

        side_attacks.each do |attack|
            current = start_pos.zip(attack).map {|a, b| a + b}

            if self.board.valid_pos?(current) == true 
                if !self.board[current].is_a?(NullPiece) && self.board[current].color != self.color
                    moves << current
                end
            end
        end

        if self.board.valid_pos?(new_pos) == true && self.board[new_pos].is_a?(NullPiece)
            moves << new_pos
        end

        if start_pos[0] == 1 && self.color == 'black'
            first_move = new_pos.zip([1, 0]).map {|a, b| a + b}
                if self.board[first_move].is_a?(NullPiece) && self.board[new_pos].is_a?(NullPiece)
                    moves << first_move
                end
        end

        if start_pos[0] == 6 && self.color == 'white'
            first_move = new_pos.zip([-1, 0]).map {|a, b| a + b}
            if self.board[first_move].is_a?(NullPiece) && self.board[new_pos].is_a?(NullPiece)
                moves << first_move
            end
        end

        moves
    end



    private
    def forward_dir
        if self.color == 'black'
            return [1, 0]
        else
            return [-1, 0]
        end
    end

    def side_attacks
        if self.color == 'white'
            attacks = [[-1, 1], [-1, -1]]
            return attacks
        else
            other_attacks = [[1, 1], [1, -1]]
            return other_attacks
        end
    end

end
