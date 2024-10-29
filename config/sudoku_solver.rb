def solve_sudoku(rows)
    
end

def columns(rows)
  (0..8).map { |index| rows.map { |row| row[index] } }
end

def grids(rows)
	(0..2).flat_map do |i|
    (0..2).map do |j|
      (0..2).flat_map do |k|
        (0..2).map do |l|
          rows[i * 3 + k][j * 3 + l]
        end
      end
    end
  end
end

def is_valid(board, row, col, num)
  !board[row].include?(num) &&
    !columns(board)[col].include?(num) &&
    !grids(board)[(row / 3) * 3 + col / 3].include?(num)
end

def find_empty_location(board)
  (0..8).each do |row|
    (0..8).each do |col|
      return [row, col] if board[row][col].zero?
    end
  end
  nil
end

def rows
    [
        [5, 3, 0, 0, 7, 0, 0, 0, 0],
        [6, 0, 0, 1, 9, 5, 0, 0, 0],
        [0, 9, 8, 0, 0, 0, 0, 6, 0],
        [8, 0, 0, 0, 6, 0, 0, 0, 3],
        [4, 0, 0, 8, 0, 3, 0, 0, 1],
        [7, 0, 0, 0, 2, 0, 0, 0, 6],
        [0, 6, 0, 0, 0, 0, 2, 8, 0],
        [0, 0, 0, 4, 1, 9, 0, 0, 5],
        [0, 0, 0, 0, 8, 0, 0, 7, 9]
    ]
end

board = rows
if solve_sudoku(board)
  board.each { |row| p row }
else
  puts "No solution exists"
end