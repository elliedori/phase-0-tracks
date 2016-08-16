class Santa

#changing age & gender to attr_accessor methods to be able to read that data for release 4

attr_reader :ethnicity
attr_accessor :age, :gender

def initialize(gender, ethnicity)
  puts "Initializing Santa instance..."
  @gender = gender
  @ethnicity = ethnicity
  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0

end

def speak
  puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies (cookie)
  puts "That was a good #{cookie}!"
end

def celebrate_birthday
  @age += 1
end

def get_mad_at(reindeer)
  @reindeer_ranking.delete(reindeer)
  @reindeer_ranking << reindeer
end

end

# driver code for releases 2 & 3
#  ———————————————————

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

10.times do
  santas << Santa.new(example_genders[rand(7)], example_ethnicities[rand(7)])
end

p santas

santa = Santa.new("agender", "Latino")

p santa
santa.celebrate_birthday
santa.get_mad_at("Rudolph")
santa.gender = "female"

p santa
p santa.age
p santa.ethnicity

#  ———————————————————

#code for release 4

cool_santas = []
genders = ["agender", "female", "bigender", "male", "female", "not sure", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "Middle Eastern", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


200.times do 
cool_santas << Santa.new(genders[rand(8)], ethnicities[rand(8)])
end

cool_santas.each do |santa|
  santa.age = rand(141)
  puts "This santa is #{santa.gender}, #{santa.ethnicity} and #{santa.age} years old."
end

