# q1.rb
# see if "Spot" is present in the hash.

ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?("Spot")
# two additional methods
ages.has_key?("Spot") # ages.key?("Spot")
ages.fetch("Spot") {|key| "No key #{key}"}
ages.member?("Spot")