require_relative "piece"


class NullPiece < Piece
    include Singelton

    def initialize
        @color
    end

    def symbol
        ' '.colorize(color)
    end 

end 