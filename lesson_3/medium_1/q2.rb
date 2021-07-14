# q2.rb
# The result of the following statement will be an error. Why / give 2 solutions
# puts "the value of 40 + 2 is " + (40 + 2)
# This error occurs because you cant add an integer to a string with + 

# Soluition 1: Use .to_s
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Solution 2: String interpolation
puts "the value of 40 + 2 is #{(40 + 2)}"