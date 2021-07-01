# mortgage_calculator.rb
# mortgage_calculator.rb
# START

# SET duration_year = number of years on loan
# SET duration_months = months on loan 
# SET principle = loan amount
# SET apr = annual percentage rate 
# SET monthly_rate = apr / 12

# GET loan ammount
# GET annual percentage rate
#   -convert to monthly interest rate
# GET the loan duration
#   -account for year and month input
#   -convert to months

# PRINT payment per month
# PRINT total interest
# PRINT total of payments with interest

def prompt(message)
  puts("=> #{message}")
end

def valid_integer?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num
end

loop do
  
  prompt("Welcome to Mortgage Loan Calculator! Please enter you name:")
  name = ''

  loop do
    name = gets.chomp
    
    if name.empty?
      prompt("Please be sure to enter a valid name")
    else 
      break
    end
  end


  prompt("Hello #{name}! Please enter the Principle of your loan")
  principle = nil
  loop do
    principle = gets.chomp
    if valid_integer?(principle)
      break
    else
      prompt("Please be sure to enter a valid integer.")
    end
  end


  prompt("Please enter your Annual Percentage Rate (APR%):")
  apr = nil
  loop do
    apr = gets.chomp
    if valid_integer?(apr) || valid_float?(apr)
      break
    else
      prompt("Please enter a valid float:")
    end
  end
  monthly_rate = (apr.to_f / 100) / 12

  prompt("Please enter loan term years: ")
  duration_year = nil
  loop do
    duration_year = gets.chomp
    if valid_integer?(duration_year)
      break
    elsif duration_year == 0
      return 0
    else
      promt("Please enter a valid integer:")
    end
  end

  prompt("Please enter loan term months: ")
  duration_months = nil
  loop do
    duration_months = gets.chomp
    if valid_integer?(duration_months)
      break
    elsif duration_months == 0
      return 0
    else
      promt("Please enter a valid integer:")
    end
  end

  duration_total = (duration_year.to_i * 12) + duration_months.to_i

  monthly_payment = principle.to_i * (monthly_rate / (1 - (1 + monthly_rate)**(-duration_total)))

  prompt("#{name} you will owe $#{monthly_payment} each month")
  prompt("Would you like to perform another calculation? Y/N:")
  answer = gets.chomp 

  break unless answer.downcase == 'y'

end

prompt("Thank you for using Mortgage Calculator.")
prompt("Goodbye!")