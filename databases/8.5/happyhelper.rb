require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("meditation_log.db")
# db.results_as_hash = true

create_log = <<-SQL
  CREATE TABLE IF NOT EXISTS meditations(
    id INTEGER PRIMARY KEY,
    day DATE,
    type VARCHAR(255),
    mood INTEGER
  )
SQL

db.execute(create_log)

def log_med(db, type, mood)
  today = Time.new.to_s[0..9] #gives us YYYY-MM-DD which matches SQL's DATE structure
  db.execute("INSERT INTO meditations (day, type, mood) VALUES (?, ?, ?)", [today, type, mood])
end


# DRIVER CODE TO TEST

# log_med(db, "listening", 7)

# meditation_types = ["listening to sounds", "feeling body sensations", "focusing on the breath", "visualizing an image"]

# 200.times do
#   log_med(db, meditation_types.sample, rand(10) + 1)
# end

meditation_log = db.execute ("SELECT * FROM meditations")
# puts meditation_log

# USER INTERFACE
puts "\n"
puts "Hi there! Welcome to Happy Helper™, the app that helps you quiet your mind and live life more fully."
puts "\n"
puts "Here's how to use it: each day, choose one type of meditation to do. You can do it for 10 minutes or 10 hours – it's completely up to you! Then use this app to log what kind of meditation you did, and how you felt that day."
puts "\n"
puts "Here are the types of meditations you can choose from: 
———————————————————————————————————————————————————————————————
1. Listening to sounds – close your eyes, relax, and just listen to the sounds around you. Don't label them or judge them, just be present with whatever you hear.
2. Feeling body sensations – close your eyes, relax, and feel the sensations of your body. Feel the beat of your heart, the air on your skin, the sensations of being alive.
3. Focusing on the breath – close your eyes, relax, and focus on your breathing. Feel the air moving through your nostrils, throat, and lungs, focus in on your chest rising and falling. 
4. Visualizing an image – close your eyes, relax, and imagine a scene, such as a still lake with no ripples. Focus on the scene of your choice and try to see it in your mind's eye.
———————————————————————————————————————————————————————————————"
puts "\n"

while true
  puts "Would you like to log a new meditation? (y/n)"
  input = gets.chomp
  if input == "n"
    puts "Okay, bye!"
    break
  else
    puts "What kind of meditation did you practice today?

          1. Listening to sounds
          2. Feeling body sensations
          3. Focusing on the breath
          4. Visualizing an image

          Enter a number to continue:"

    type_as_num = gets.chomp
        type = "Listening to sounds" if type_as_num == 1
        type = "Feeling body sensations" if type_as_num == 2
        type = "Focusing on the breath" if type_as_num == 3
        type = "Visualizing an image" if type_as_num == 4
# it's not logging type correctly, debug this later
    puts "On a scale of 1 to 10 (10 being the best feeling ever), how did you feel today?"
      mood = gets.chomp
    log_med(db, type, mood)
    puts "Great, your meditation for today has been logged!"
  end
  puts "Thanks for using HappyHelper™ :)"
  break
end

puts "Would you like to see your meditation log? (y/n)"
input = gets.chomp

if input == "n"
  puts "Okay, have fun!"
else 
  meditation_log
end