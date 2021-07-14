# q4.rb
# what will output and why
def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # "pumpkinsrutabage" : The shovel is mutating the original object and my_string and a_string_param are both pointing to the same object. (No space as it was not included)
puts "My array looks like this now: #{my_array}"   # ["pumpkins"] : = is re-assigning not mutating. my_array is pointing to a different object than an_array_param