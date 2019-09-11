class ConsoleOutput
  def self.draw_the_board(board)
    (0...board.x).each do |x|
      print '|'
      (0...board.y).each do |y|
        print "#{board[x,y]}|"
      end
      puts ''
    end
  end
end