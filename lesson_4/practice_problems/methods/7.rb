# Create a hash showing the frequency of each letter
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
# .chars to split each character => array
# .count to count occurences
# .select for selection
statement = "The Flintstones Rock"
statement_array = statement.chars
frequency = {}

statement_array.select do |letter|
  frequency[letter] = statement_array.count(letter)
end

p frequency