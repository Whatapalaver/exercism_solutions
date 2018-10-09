class Grains

  def self.square(square_no)
    raise ArgumentError, 'Square must be between 1 and 64' unless square_no >= 1 && square_no <= 64
    chessboard[square_no - 1]
  end

  def self.chessboard
    chessboard = []
    (1..64).each do |square|
      chessboard <<
        if square == 1
          1
        else
          chessboard[square - 2] * 2
        end
    end
    chessboard
  end

  def self.total
    chessboard.sum
  end

end
