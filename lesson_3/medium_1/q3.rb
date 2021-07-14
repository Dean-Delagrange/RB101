# q3.rb
# Fix to not fail with a 0 or negative number
# Dont use begin / end / until
=begin
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end
=end
def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do 
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end

puts factors(40)

# Bonus 1: number % divisor == 0 is used to ensure divisor is actually a factor of the number. Not just an element that can be divided into number.
# Bonus 2: factots in line 12 and 28 is so that the method returns the array factors as the last line in a method is what it will return