# q7.rb
# add multiple items to array (Dino and Hoppy)
flintstones = %w(Fred Barney Wilma Betty BamBam Pepples)
flintstones.append("Dino", "Hoppy")
# or use String#push twice
flintstones.push("Dino").push("Hoppy")
# or use String#concat
flintstones.concat(%w(Dino Hoppy))