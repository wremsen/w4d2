require_relative "piece"
require 'singleton'


class NullPiece < Piece
    include Singleton

    def initialize
        @color
    end

    def symbol
        ' '.colorize(color)
    end 

    def inspect
        "_"
    end 

end 