# Shift along with pop are destructive methods and will affect the original array
# Here the out put will be 1, 3 
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# #//////////////////////
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

p numbers