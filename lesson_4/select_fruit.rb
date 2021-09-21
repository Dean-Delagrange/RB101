# Write a method to select 'Fruit' out of the hash
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  fruits = {}
  array_of_items = hsh.keys # ['apple', 'carrot', 'pear', 'broccoli']
  counter = 0
  

  loop do
    current_produce = array_of_items[counter] 
    current_catagory = hsh[current_produce]

    if current_catagory == 'Fruit'
      fruits[current_produce] = current_catagory
    end
    
    counter += 1
    break if counter == array_of_items.size 
  end
  fruits
end

# Here is their codee. * Note the break should be at the TOP of the loop incase hash is empty

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
