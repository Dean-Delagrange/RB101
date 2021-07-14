# q4.rb
# Not returning a false condition
# not handling wether there are more or fewer than 4 components
def is_an_ip_number?(word)
  word.to_i >= 0 && word.to_i <= 250
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

puts dot_separated_ip_address?("10.4.5.11")  # true
puts dot_separated_ip_address?("4.5.5")      # false
puts dot_separated_ip_address?("1.2.3.4.5")  # false
puts dot_separated_ip_address?("1.-2.3.4")   # false
puts dot_separated_ip_address?("1.300.3.4")  # false