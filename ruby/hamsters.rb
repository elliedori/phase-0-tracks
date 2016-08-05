print "What is the hamsters name: "
name = gets.chomp

print "What is the volume (1-10) "
volume = gets.chomp.to_i

print "What is the fur color? "
fur_color = gets.chomp

print "Good candidate for adoption (Good Bad): "
good_bad_candidate = gets.chomp.downcase

if good_bad_candidate == "good"
  good_bad_candidate = true
else 
  good_bad_candidate = false
end

print "Estimated age: "
age = gets.chomp

if age == ""
    age = nil
else
  age = age.to_i
end

print "Thanks for logging this new hamster! Here's their info:
Name: #{name}
Volume: #{volume}
Fur Color: #{fur_color}
Good for adoption?: #{good_bad_candidate}
Estimated age: #{age}
"