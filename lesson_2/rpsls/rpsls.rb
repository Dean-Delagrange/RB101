require 'yaml'

MESSAGES = YAML.load_file('rpsls.yml')
SHORT_NAMES = MESSAGES['short_names']
VALID_CHOICES = SHORT_NAMES.values
DEFEATS = MESSAGES['defeats']
MAX_WINS = 2

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  DEFEATS[first].include?(second)
end

def display_results(winner)
  case winner
  when 'player'   then prompt("You won!")
  when 'computer' then prompt("Computer won!")
  else                 prompt("It's a tie!")
  end
end

def display_scores(scores)
  message = <<-MSG
Update scores: 
    You: #{scores[:player]}
    Computer: #{scores[:computer]}
  MSG
  prompt(message)
end

def winner(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  end
end

def update_score(winner, scores)
  if winner
    scores[winner.to_sym] += 1
  end
end

def match_winner(scores)
  winner = nil
  scores.each do |player, score|
    if score == MAX_WINS
       winner = player
    end
  end
  winner
end

def display_match_results(winner)
  case winner
  when 'player'   then prompt("You won the match!")
  when 'computer' then prompt("The computer won the match!")
  end
end

def reset_match(scores)
  scores[:player] = 0
  scores[:computer] = 0
end

def capitalize(words)
  words.map(&:capitalize)
end

def format_valid_choices(name_hash)
  name_hash.map { |short_name, full_name| "#{full_name} (#{short_name})"}
end

def get_user_choice
  choice = ''
  loop do
    prompt("Choose one: #{format_valid_choices(SHORT_NAMES).join(', ')}")
    choice = gets.chomp.downcase

    if SHORT_NAMES[choice]
      choice = SHORT_NAMES[choice]
    end

    if VALID_CHOICES.include?(choice)
     break
    else
      prompt("Please enter a valid choice.")
    end
  end
  choice
end

def play_again?(match_winner)
  answer = ''
  loop do
    if match_winner = player
      prompt("Do you want to play anoter game?")
    else
      prompt("Do you want to play anoter match?")
    end
    answer = gets.chomp.downcase
    if !%w(y yes n no).include?(answer)
      prompt("Please provide a valid response (yes or no)")
    else
      break
    end
  end
  answer.start_with?('y')
end

system "clear"
puts "***************************************************"
prompt("Welcome to #{capitalize(VALID_CHOICES).join(', ')}!")
puts "***************************************************"
prompt("You must win #{MAX_WINS} games to win the match.\n\n")

scores = {player: 0, computer: 0}

loop do # main loop
  player_choice = get_user_choice
  computer_choice = VALID_CHOICES.sample

  prompt("You choose #{player_choice}; Computer choose #{computer_choice}")

  winner = winner(player_choice, computer_choice)
  display_results(winner)
  update_score(winner, scores)
  display_scores(scores)

  match_winner = match_winner(scores)
  if match_winner
    display_match_results(match_winner.to_s)
    reset_match(scores)
  end
  
  break unless play_again?(match_winner)
  system "clear"
end

prompt("Thank you for playing!")