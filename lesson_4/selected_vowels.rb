def select_vowels(str)
  vowels = ''
  counter = 0

  loop do
    current_chars = str[counter]

    if 'aeiouAERIOU'.include?(current_chars)
      vowels << current_chars
    end

    counter += 1
    break if counter == str.length
  end

  vowels
end

select_vowels('the quick brown fox')      # => "euioo"

sentence = 'I wandered lonely as a cloud'
select_vowels(sentence)                   # => "Iaeeoeaaou"

puts number_of_vowels = select_vowels('hello world').size
number_of_vowels # => 3