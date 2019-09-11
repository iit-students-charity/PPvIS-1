require_relative 'board'
require_relative 'console_output'
require_relative '../../helpers/validate'

class Game
  include Validate

  def initialize
    @turn = :x
    @continue_game = true
  end

  def start
    main_menu
  end

  def main_menu
    puts '------ Tic Tac Toe ------'.colorize(:blue)
    puts '[1] - Начать игру'
    puts '[2] - Выйти'
    input = gets.chomp
    case input
    when '1'
      board_size
      game_loop
    when '2'
      exit
    else
      puts 'Выберите пункт меню'
    end
  end

  def board_size
    puts 'Введите x'
    board_x = gets.chomp.to_i
    board_x = valid_field_size(board_x)
    puts 'Введите y'
    board_y = gets.chomp.to_i
    board_y = valid_field_size(board_y)
    @moves_left = board_x * board_y
    @board = Board.new(board_x, board_y)
  end

  def game_loop
    while @continue_game
      ConsoleOutput.draw_the_board(@board)
      check_for_win
      new_move if @continue_game
      @moves_left -= 1
      @turn == :x ? @turn = :o : @turn = :x
    end
  end

  def check_for_win
    win_message(:x) if validate(@board, :x)
    binding.pry
    win_message(:o) if validate(@board, :o)
    win_message(:d) if @moves_left < 1
  end

  def win_message(winner)
    case winner
    when :x
      puts 'X won'.colorize(:red)
      @continue_game = false
    when :o
      puts 'O won'.colorize(:red)
      @continue_game = false
    when :d
      puts 'It\'s a draw'.colorize(:red)
      @continue_game = false
    end
  end

  def new_move
    puts "Сейчас ходит #{@turn}".colorize(:blue)
    puts 'Введите координату x'
    x = gets.chomp.to_i - 1
    puts 'Введите координату y'
    y = gets.chomp.to_i - 1
    new_move unless @board[x, y, @turn]
  end
end