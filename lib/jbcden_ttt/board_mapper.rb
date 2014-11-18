module JbcdenTtt
  class BoardMapper
    class InvalidCoordinateError < StandardError
      def initialize(msg="An invalid coordinate was passed in, please try again")
        super
      end
    end

    ROW_MAPPER = {
      "a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f" => 5, "g" => 6, "h" => 7,
      "i" => 8, "j" => 9, "k" => 10, "l" => 11, "m" => 12, "n" => 13, "o" => 14, "p" => 15,
      "q" => 16, "r" => 17, "s" => 18, "t" => 19, "u" => 20, "v" => 21, "w" => 22, "x" => 23,
      "y" => 24, "z" => 25
    }

    def self.map_coordinate(x, y)
      str = ""
      str << ROW_MAPPER.key(x)
      str << (y+1).to_s

      str
    end

    def self.map_string(board, location)

      row = extract_row(location)
      col = extract_column(location)

      if is_valid?(board, row, col)
        board[ROW_MAPPER[row]][col]
      else
        raise InvalidCoordinateError
      end
    end

    private
    def self.extract_column(location)
      column = location.scan(/\d+\Z/).first
      raise InvalidCoordinateError if column.nil?
      get_col(
        Integer(column)
      )
    end

    def self.extract_row(location)
      row = location.scan(/\A[a-z]+/).first
      raise InvalidCoordinateError if row.nil?
      raise InvalidCoordinateError unless ROW_MAPPER.has_key?(row)
      row
    end

    def self.get_col(col_num)
      col_num - 1
    end

    def self.is_valid?(board, row, col)
      (board.height) > ROW_MAPPER[row] && (board.width) > col
    end

    def self.row_size
      @row_size ||= board.first.size
    end
  end
end
