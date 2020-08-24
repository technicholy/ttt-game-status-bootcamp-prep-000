# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
def won(board)
  WIN_COMBINATIONS.each do |win_combination|
    moves = []
    win_combination.each do |pos|
      moves << board[pos]
    end
    puts moves
    #((moves == ["X","X","X"]) || (moves == ["O","O","O"])) ? (return win_combination) : (return false)
  end
end

def full(board)
end
