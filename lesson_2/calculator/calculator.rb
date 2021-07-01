# calculator.rb
# ask for two numbers: .gets.chomp
# ask for type of opperation to perfrom (+ - / *) gets.chomp
# display results: puts

# answer = gets
# puts answer

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end



prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES[first_number])
    number1 = Kernel.gets().chomp()             # puting () after Method Calls

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES[invalid_number])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES[second_number)
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES[invalid_number])
    end
  end

  
prompt(MESSAGES['operator_prompt'])


  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['must_choose'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
          when '1'
            result = number1.to_i() + number2.to_i()
          when '2'
            result = number1.to_i() - number2.to_i()
          when '3'
            result = number1.to_i() * number2.to_i()
          when '4'
            result = number1.to_f() / number2.to_f()  #make sure for division you use .to_f not .to_i.
  end

  prompt("The result is #{result}")

  prompt(MESSAGES('another_prompt'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['thanks'])