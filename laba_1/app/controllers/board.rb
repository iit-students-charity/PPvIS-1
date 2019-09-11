class Board
  attr_accessor :board_x, :board_y

  def initialize(board_x, board_y)
    @field =  Array.new(board_y).map!{Array.new(board_x, '.')}
    @board_x = board_x
    @board_y = board_y
  end

  def [](cell_x, cell_y, value = nil)
    if value.nil?
      get_cell(cell_x, cell_y)
    else
      set_cell(cell_x, cell_y, value)
    end
  end

  def x; @board_x; end
  def y; @board_y; end

  private

  def set_cell(cell_x, cell_y, value)
    return false unless valid_coordinates(cell_x, cell_y) && @field[cell_x][cell_y] == '.'
    @field[cell_x][cell_y] = value
  end

  def get_cell(cell_x, cell_y)
    return false unless valid_coordinates(cell_x, cell_y)
    @field[cell_y][cell_x]
  end

  def valid_coordinates(x, y)
    (x < @board_x ) && (y < @board_y) && (y >= 0) && (x >= 0)
  end
end