# q5.rb
# Whats wrong with the fibonacci calculater / fix it
# What is wrong in the original code is that the varible "limit" is not being passed into the method or initialized in the method. (Method definition cannot access outside variable)
# add limit as a parameter in the method definition (line 8) and pass it thru as a argument when invoking (line 17)
# Anoter solution is move the initialization of the variable "limit" to inside the method definition
limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"