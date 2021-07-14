# q8.rb
# shorten the following sentence
advice = "Few things in life are as important as house training your per dinosaur."
short = advice.slice!(0, advice.index('house')) 
puts short
puts advice