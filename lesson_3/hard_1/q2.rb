# q2.rb
# what is the result of the last line
greetings = { a: 'hi' }
informal_greeting = greetings[:a] # informal_greeting = greetings[:a].clone            Both will cause a new variable to be initialized, keeping the original hash intact. 
informal_greeting << ' there'     # informal_greeting = informal_greeting + " there"

puts informal_greeting # => "hi there"
puts greetings         # => {:a => "hi there"} 
#in this case informal_greeting is pointing to the object_id associated with a: in the hash.
# therefore, when the shovel operator << is used the original object is changed. 
# ie both greetings and informal_greetings are linked to the same object_id