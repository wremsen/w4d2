require_relative 'piece'

class Board

    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}

        @rows.each_with_index do |row, i|
            if [0, 1, 6, 7].include?(i)
                row.map! {|ele| ele = Piece.new}
            end
        end

    end




end

