class Santa
attr_reader :age, :ethnicity
attr_writer :gender

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

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# 10.times do
#   santas << Santa.new(example_genders[rand(7)], example_ethnicities[rand(7)])
# end

santa = Santa.new("agender", "Latino")
p santa
santa.celebrate_birthday
santa.get_mad_at("Rudolph")
santa.gender = "female"

p santa
p santa.age
p santa.ethnicity