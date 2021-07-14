# q1.rb
# What do you expect to happen when the "greeting" variable is referenced in the last line of the code
if false
  greeting = "hello world"
end

greeting # an error will occur as the variable was not initialized WRONG it shows as nil
# When you initialize a variable ion an if block, the local variable is initialized as nil
