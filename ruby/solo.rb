# Yogi class
# has the following attributes:
 # gender, 
 # favorite pose, 
 # age
# has the following methods
 # levitation that takes in height as parameter
 # stretch
 # chant
# end


# BUSINESS LOGIC

class Yogi

attr_accessor :fav_pose
attr_reader :gender, :age

def initialize(gender, age)
  @gender = gender
  @age = age
  @fav_pose = "savasana"
end

def levitate(height)
  puts "The master yogi levitated to a height of #{height} feet!"
end

def stretch
  puts "The yogi is stretching. All day err day."
end

def chant
  puts "Om, yo."
end

end

#driver code to test methods are working correctly

yogi = Yogi.new("female", 24)
p yogi
yogi.levitate(200)
yogi.chant
yogi.stretch

#USER INTERFACE

user_yogis = []

while true
  puts "Would you like to create a yogi today? (y/n)"
response = gets.chomp
if response == "n"
  puts "Okay!"
  break
else
  puts "What gender is the yogi?"
  gender = gets.chomp
  
  puts "What age is the yogi?"
  age = gets.chomp.to_i

  user_yogis << Yogi.new(gender, age)

  puts "What is the yogi's favorite pose?"
  fav_pose = gets.chomp
  user_yogis[-1].fav_pose = fav_pose
end
end

#only print results if they created some yogis
if user_yogis.length > 0
  puts "Here are the yogis you created:"
  user_yogis.each_with_index do |yogi, index|
    puts "[#{index+1}] Gender: #{yogi.gender} Age: #{yogi.age} Favorite Pose: #{yogi.fav_pose}"
  end   
end



