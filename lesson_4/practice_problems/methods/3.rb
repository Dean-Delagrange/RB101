# remove people with an age over 100 from the hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# .select 
ages.keep_if {|name, age| age <= 100}
p ages