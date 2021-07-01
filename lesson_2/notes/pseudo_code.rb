# pseudo_code.rb
# examples of casual and formal code for three examples. 

# 1. A method that returns the sum of two integers
# Casual Form
# Ask user to input first number.
  # -save the first input as number1
  # -remove new line from input

#Ask the user to input a second number
  # - save input as number 2
  # -remove new line from input

# Set the result to be the addition of number1 and number2
  # - ensure numbers are converted from strings to integers
#print result

#end

# Formal Write Up
# START

# GET number1 = first input from user
# GET number2 = second input from the user.

# SET result = number1 + number2

# PRINT result
# END


#2. A method that takes an array of strings, and returns a string that is all those strings concatenated together
# Casual Write Up
# Given an array of strings. 

# Iterate through the array one by one.
  # save the first string to a variable sentence
  # concat each element of array to variable sentence

# After iterating through the array of strings, return the sentence

# Formal Write Up
# START

# given an array of strings called "strings"

# SET sentence = ""

# EACH element in array concatenat to sentence

# PRINT sentence
# END


# 3. A method that takes an array of integers, and returns a new array with every other element
# Casual write up 

# Given a collection of integets

# Create new array

# Iterate through the collection one by one,
  #save the first value to the array
  #shovel every other element into new array

# After iterating through the collection, return the new array

# Foraml Write Up

# START

# Given a collection on integers called "numbers"

# SET new_array = []

# WHILE iterator <= length of numbers
#   SET new_array = first value in collection,
#   SET new_array = shovel every other element from array

# PRINT new_array 
# ENDA