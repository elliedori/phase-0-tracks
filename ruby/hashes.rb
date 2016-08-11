# Create a design application hash
# For each question
#   Print the question to the screen
#   Store user answer as the value to the question key

# Print out full hash
# Ask user to type in any question that needs updating
#   Print their current answer, ask for the updated answer
#   Overwrite old value

# Exit

designer_app = Hash.new

puts "What's your full name?"
designer_app[:name] = gets.chomp

puts "How old are you?"
designer_app[:age] = gets.chomp.to_i

puts "How many children do you have?"
designer_app[:number_of_kids] = gets.chomp.to_i

puts "What decor theme would you like?"
designer_app[:theme] = gets.chomp

puts "How did you hear about us?"
designer_app[:referral] = gets.chomp

puts "Is this your first time using Fancy Wallz Interior Design? (y/n)"
if gets.chomp == "y"
  designer_app[:new_client] = true
else
  designer_app[:new_client] = false
end

puts "\n————Your details————"
  designer_app.each {|key, value| puts "#{key}: #{value}" }
#add some formatting so that the colon doesn't get printed with the symbols

puts "\nWould you like to update any info? 
If so, type the name of the category you'd like to update.
If not, type 'none'"
response = gets.chomp
if response == "none"
  puts "Thanks for registering with Fancy Wallz!"
  exit #exiting here so it doesn't re-print all the details again
else
  key_to_update = response.to_sym
  puts "#{key_to_update} is currently set to #{designer_app[key_to_update]}. Please enter a new value to overwrite."
  designer_app[key_to_update] = gets.chomp
  puts "Thanks for updating your info!"
end

puts "\n————Your details————"
  designer_app.each {|key, value| puts "#{key}: #{value}" }

