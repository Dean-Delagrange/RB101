# Turn array into a hash where the keys are the names and the values are the indicies
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
array = {}
flintstones.each_with_index do |name, index|
  array[name] = index
end

p array

