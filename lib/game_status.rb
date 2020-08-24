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
def won?(board)
  WIN_COMBINATIONS.each do |pos1, pos2, pos3|
    moves = [board[pos1],board[pos2],board[pos3]]
    ((moves == ["X","X","X"]) || (moves == ["O","O","O"])) ? (return [pos1, pos2, pos3]) : (return false)
  end
end

def full(board)
end
