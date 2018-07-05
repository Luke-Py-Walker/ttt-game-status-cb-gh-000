# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6],[0,3,6],[1,4,7],[2,5,8]]

def won?(board)
  WIN_COMBINATIONS.select do |win_index|
    position_1 = 1 #board[win_index[0]]
    position_2 = board[win_index[1]]
    position_3 = board[win_index[2]]
    position_1 == position_2 && position_2 == position_3
  end
end
