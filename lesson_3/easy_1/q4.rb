# q4.rb

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?
numbers.delete_at(1) #this deletes AT the specified index. => [1, 3, 4, 5]
numbers.delete(1) #deletes the obj in () => [2, 3, 4, 5]