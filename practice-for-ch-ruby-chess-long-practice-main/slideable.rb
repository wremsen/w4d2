module Slidable

    HORIZONTAL_VERT_DIRS = [
        [0, 1], [0, -1],
        [1, 0], [-1, 0]
    ].freeze

    DIAG_DIRS = [
         [1, 1], [1, -1],
         [-1, -1], [-1, 1]
    ].freeze


    def horizontal_vert_dirs
        HORIZONTAL_VERT_DIRS
    end

    def diag_dirs
        DIAG_DIRS
    end

    def moves 
        moves = []

        self.move_dirs.each do |ele|
            dx = ele[0]
            dy = ele[1]
            my_dir_moves = grow_unblocked_moves_in_dir(dx, dy)
            moves += my_dir_moves
        end

        moves
    end



    

    private
    def move_dirs
        raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        dir_moves = []
        
        queue = [self.pos]
        until queue.empty?
            current_pos = queue.shift
            delta = [dx, dy]
            new_pos = current_pos.zip(delta).map  {|a, b| a + b}

            

            if self.board.valid_pos?(new_pos) == false
                break
            end

            piece = self.board[new_pos]

            if !piece.is_a?(NullPiece) && piece.color == self.color
                break
            end

            if !piece.is_a?(NullPiece) && piece.color != self.color
                dir_moves << new_pos
                break
            end

            dir_moves << new_pos
            queue << new_pos
        end

        dir_moves
    end

end 