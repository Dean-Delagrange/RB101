# q6.rb
# What is the outpput of the following code?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# this will output 34 as the variable answer was not changed by the method invocation. That value was set to the variable new_answer