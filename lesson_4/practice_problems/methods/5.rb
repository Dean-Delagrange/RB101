# Find the index of the first name that starts with be
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  if name.start_with?('Be')
    puts "Name: #{name}, Index: #{index} "
  end
end

# LS solution is much cleaner
flintstones.index {|name| name[0,2] == "Be"}