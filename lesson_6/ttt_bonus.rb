require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # colls
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, delimiter= ', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def display_score(player, computer, tie)
  prompt("Player Score: #{player}. Computer Score: #{computer}. Tied: #{tie}.")
end

# rubocop:disable Metrics/MethodLength, Metics/AbcSize
def display_board(brd)
  system 'clear'
  puts "Player is marker #{PLAYER_MARKER}. Computer is marker #{COMPUTER_MARKER}."
  prompt "First Player to 5 wins!"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/MethodLength, Metics/AbcSize

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def alternate_player(data)
  data == 'h' ? 'c' : 'h'
end

def place_piece!(board, current_player)
  if current_player == 'h'
    player_places_piece!(board)
  elsif current_player == 'c'
    computer_places_piece!(board)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  # defense
  WINNING_LINES.each do |line|
    square = immediate_threat(line, brd, COMPUTER_MARKER)
    break if square
  end
  # ofense
  if !square
    WINNING_LINES.each do |line|
      square = immediate_threat(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    if square = empty_squares(brd).include?(5)
      square = 5
    else
      square = empty_squares(brd).sample
    end
    square
  end

  brd[square] = COMPUTER_MARKER
end

def immediate_threat(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# GAME LOOP
loop do
  board = intialize_board
  current_player = nil
  tied = 0
  player_score = 0
  computer_score = 0
  # Choose who goes first loop
  loop do
    prompt "Who should go first Human or let the Computer choose? (h or c):"
    who_goes_first = gets.chomp.downcase
    if who_goes_first == 'h'
      current_player = 'h'
    elsif who_goes_first == 'c'
      current_player = %w(h c).sample
    else
      prompt "Invalid Input"
    end
    break if %w(h c).include?(who_goes_first)
  end

  # Piece Placeing Logic
  loop do
    board = intialize_board

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    # Who won logic
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end
    # Score Update
    case detect_winner(board)
    when 'Player'
      player_score += 1
    when 'Computer'
      computer_score += 1
    when nil
      tied += 1
    end

    display_score(player_score, computer_score, tied)
    if player_score >= 5 || computer_score >= 5
      prompt "Player #{player_score} Conputer: #{computer_score}"
      break
    end
    prompt "Do you wish to continue the tournament? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end

  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Good bye!"

