# rock_paper_scissors.rb
# conastants
VALID_CHOICES = %w(rock paper scissors lizard spock)
ABBREVIATION = %w(r p s l sc)
# variables

player_wins = 0
computer_wins = 0

def prompt(message)
  puts "=> #{message}"
end

def convert(original)
  word = case original
         when 'r'
          'rock'
         when 'p'
          'paper'
         when 's'
          'scissors'
         when 'l'
          'lizard'
         when 'sp'
          'spock'
         end
  word
end


def win?(first, second)
  first == 'rock' && second == 'scissors' || 
    first == 'rock' && second == 'lizard' ||
    first == 'paper' && second == 'rock' || 
    first == 'paper' && second == 'spock' ||
    first == 'scissors' && second == 'paper' || 
    first == 'scissors' && second == 'lizard' ||
    first == 'lizard' && second == 'paper' || 
    first == 'lizard' && second == 'spock' ||
    first == 'spock' && second == 'rock' || 
    first == 'spock' && second == 'scissors'
end
=begin
def win?(first, second)
  outcomes = {'rock' => ['scissors', 'lizard'], 
              'paper' => ['rock', 'spock'], 
              'scissors' => ['paper', 'lizard'],
              'lizard' => ['paper', 'spock'],
              'spock' => ['rock', 'scissors']
  }
  if first == 'rock' && second == outcomes['rock'][0] || second == outcomes['rock'][1]
  elsif first == 'paper' && second == outcomes['paper'][0] || second == outcomes['paper'][1]
  elsif first == 'scissors' && second == outcomes['scissors'][0] || second == outcomes['scissors'][1]
  elsif first == 'lizard' && second == outcomes['lizard'][0] || second == outcomes['lizard'][1]
  elsif first == 'spock' && second == outcomes['spock'][0] || second == outcomes['spock'][1]
  end
end
=end
def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("Tie!").inspect
  end
end

def update_score(previous, player, computer)
  if previous == "You won!"
    player += 1
  elsif previous == "Computer won!"
    computer += 1
  else
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} or simply input #{ABBREVIATION.join(', ')} respevitvely.")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    elsif ABBREVIATION.include?(choice)
      choice = convert(choice)
      break
    else
      prompt("Invalid input")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose: #{choice}; Computer chose: #{computer_choice}")

  display_result(choice, computer_choice)

  #update_score(display_result, player_wins, computer_wins)

  prompt("The current score is Player: #{player_wins} Computer: #{computer_wins}")

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
