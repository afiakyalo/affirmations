Implement the Sudoku Solver Function:

Write a method solve_sudoku(board) that solves a Sudoku puzzle. The board is a 9x9 grid represented as a 2D array, where each cell contains an integer from 1 to 9 or 0 (for empty cells).

The Sudoku puzzle follows these rules:

Each row must contain the numbers 1-9 without repetition.
Each column must contain the numbers 1-9 without repetition.
Each of the 9 sub-grids (3x3) must also contain the numbers 1-9 without repetition.
Method Signature:

ruby
Copy code
def solve_sudoku(board)
  # Your code here
end

def print_board(board)
  board.each do |row|
    puts row.map { |num| num == 0 ? '.' : num.to_s }.join(' ')
  end
end

Sample Input Board
board = [
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