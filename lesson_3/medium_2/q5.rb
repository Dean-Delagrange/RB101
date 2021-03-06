# q5.rb
# Change the code (on website) to make the result easier to predict and easier for the next programmer to maintain
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# *** Clever programmers don't write "clever" code. They write explicit code that is easy to read, debug and modify as the requirements change.