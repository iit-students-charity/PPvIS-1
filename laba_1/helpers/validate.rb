module Validate
  def validate(board, search_for)
    horizontal_line?(board, search_for) || vertical_line?(board, search_for) || diagonal_line?(board, search_for)
  end

  def valid_field_size(size)
    if size < 3
      puts 'Поле не может быть меньше 3'
      return 3
    end
    size
  end

  private

  def horizontal_line?(board, search_for)
    (1...board.x - 1).each do |x|
      (0...board.y).each do |y|
        return true if (board[x - 1, y] == search_for ) && (board[x,y] == search_for ) && (board[x + 1, y] == search_for )
      end
    end
    false
  end

  def vertical_line?(board, search_for)
    (0...board.x).each do |x|
      (1...board.y - 1).each do |y|
        return true if (board[x, y - 1] == search_for ) && (board[x,y] == search_for ) && (board[x, y + 1] == search_for )
      end
    end
    false
  end

  def diagonal_line?(board, search_for)
    (1...board.x - 1).each do |x|
      (1...board.y - 1).each do |y|
        return true if (board[x - 1, y - 1] == search_for ) && (board[x,y] == search_for ) && (board[x + 1, y + 1] == search_for )
        return true if (board[x - 1, y + 1] == search_for ) && (board[x,y] == search_for ) && (board[x + 1, y - 1] == search_for )
      end
    end
    false
  end
end