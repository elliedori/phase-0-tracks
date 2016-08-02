puts "What's this hamster's name?"
name = gets.chomp.capitalize

puts "What is the noise level of this little critter? (1 - 10)"
noise_lvl = gets.chomp.to_i

puts "What color is this hamster's fur?"
color = gets.chomp

puts "Do you think this hamster is a good candidate for adoption? (yes/no)"
  if gets.chomp.downcase == "yes"
    adopt = true
  else
    adopt = false
  end

puts "How old do you think this hamster is?"
raw_age = gets.chomp
  if raw_age.empty?
    age = nil
  else
    age = raw_age.to_i
  end


puts "Thanks for helping us log our new hamster! Here's the info you submitted:
Name: #{name}
Noise level: #{noise_lvl}
Color: #{color}
Good for adoption?: #{adopt}
Estimated age: #{age}
"