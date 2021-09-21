# Using the each method output the vowels of the strings
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = %w[a e i o u]

hsh.each do |key, words|
  words.each do |word|
    word.each_char do |char|
      puts char if vowels.include?(char)
    end
  end
end