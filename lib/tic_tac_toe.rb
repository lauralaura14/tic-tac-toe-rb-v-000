WIN_COMBINATIONS  = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]


  def input_to_index(input)
    index = input.to_i
    index = index - 1
  end

  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def won?(board)

    WIN_COMBINATIONS. each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]

      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

      if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
        return win_combination
      else
        false
      end
      end

      if board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
        false
      end

  end

  def position_taken?(board, index)
    !(board[index].nil? || board[index] == " ")
  end

  def valid_move? (board, index)
    if index.between?(0, 8) && position_taken?(board, index)
      false
      else
        true
    end
  end

  def position_taken?(board, index)
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      false
    else
      true
    end
  end

  def move(board, index, token)
    board[index] = token
  end

  def turn_count(board)
  count = 0
  board. each do |turn|
    if (turn == "X") || (turn == "O")
      count += 1
    end
  end
  count
end

def current_player(board)
  if turn_count(board).even?
    "X"
  else
    "O"
  end
end

  def full?(board)

    board.each do |slot|
      if slot == " "
        return false
      end
    end
  end

  def draw?(board)
    board.each do |slot|
      if won?(board) == [0,1,2] || won?(board) == [0,4,8] || won?(board) == [2,4,6] || slot == " "
        return false
      end
    end
  end
