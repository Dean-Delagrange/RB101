# q3.rb
# What will be displayed and why
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # "pumpkins" : += does not mutate the original object. Instead it re-assigns to a new object ID therefore we will not see a change by passing it through the method
puts "My array looks like this now: #{my_array}"   # ["pumpkins", "rutabage"] : The shovel method will shovel in "rutabaga" as the second element of the array as it is distructive