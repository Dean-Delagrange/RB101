# Capitalize the first character in each word
words = "the flintstones rock"

p words.split.map { |word| word.capitalize! }.join(' ')
