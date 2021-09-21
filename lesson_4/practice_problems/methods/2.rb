# add all the values from the hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# My solution
p ages.values.sum
# LS solution 1. Iterating through using each on values and adding them to a new variable
total_ages = 0
ages.each { |_,age| total_ages += age}
# LS solution 2. Values to turn ages into an array, inject the enumerable method
ages.values.inject(:+)


p total_ages

