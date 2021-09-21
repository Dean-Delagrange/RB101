def multiply(numbers, multiplier)
  doubled = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= multiplier
    doubled << current_number

    counter += 1
  end

  doubled
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]