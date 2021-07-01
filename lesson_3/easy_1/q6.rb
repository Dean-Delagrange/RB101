# q6.rb
# starting with the string
famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it

# Method 1 using String#.prepend()
expected = "Four score and "
famous_words.prepend(expected)

# Method 2 using String#.insert()
famous_words.insert(0, expected)

# Method 3 + (Does not mutate famous_words)
"Four score and " + famous_words

# Method 4 << (Does not mutate famous_words)
"Four score and " << famous_words

