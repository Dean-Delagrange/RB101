# calculator_bonus.rb
# Bonus features to add to calc.

def prompt(message)
  Kernel.puts("=> #{message}")
end

def number?(input)
  integer?(input) || float?(input)
end 

def integer?(num)
  num.to_i.to_s == num
end

# def integer?(input)
#   /^-?\d+$/.match(input)
# end

# def integer?(input)
#   Integer(input) rescue false
# end

def float?(input)
  input.to_f.to_s == input
end


def operation_to_message(op)
  word = case op
         when '1'
           "Adding"
         when '2'
           "Subtracting"
         when '3'
           "Multiplying"
         when '4'
           "Dividing"
         end

  word
end



prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?()
    prompt("Make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()             # puting () after Method Calls

    if number?(number1)
      break
    else
      prompt("hmm... that doesn't look like a valid number")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt("hmm... that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
MSG
  
prompt(operator_prompt)


  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
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

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")