def bag_search
  item1 = "wallet"
  item2 = "keys"
  puts "I'm about to look in your bag"
  yield(item1, item2)
  puts "Now I know what's in your bag."
end

bag_search {|item1, item2| puts "Your bag has #{item1} and #{item2}"}

# ——————————————————————————————————————————————————————————————————————————————

types_of_bags = ["backpack", "fannypack", "computer bag"]

favorite_by_age = {kids: "fannypack", teens: "backpack", adults: "computer bag"}

#use .each to iterate through array
p types_of_bags
types_of_bags.each {|bag| puts bag}
p types_of_bags

#use .map! on the array
p types_of_bags
types_of_bags.map! do |bag|
  "#{bag}" + "s"
end
p types_of_bags

#use .each to iterate through hash
p favorite_by_age
favorite_by_age.each do |age_group, fav_bag|
  puts "The favorite bag of #{age_group} is #{fav_bag}."
end
p favorite_by_age

# ——————————————————————————————————————————————————————————————————————————————

number_arr = [4,12,16,3,7,5]

output_number = {1 => "one", 2 => "two", 3 => "three", 10 => "ten", 12 => "twelve"}

# deleting things on array
number_arr.delete_if {|num| num < 5}
puts number_arr

# deleting things on hash
output_number.delete_if {|integer, word| integer > 3}
puts output_number

#selecting things on array
even_nums = number_arr.select {|num| num.even?}
puts even_nums

#selecting things on hash
t_numbers = output_number.select {|integer, word| word.include? "t" } 
puts t_numbers

#using keep if on array
odd_nums = number_arr.keep_if {|num| num.odd?}
puts odd_nums

#using keep if on hash
n_numbers = output_number.keep_if {|integer, word| word.include? "n" }
puts n_numbers

drop while on array
div_by_four = number_arr.drop_while {|num| num%4 == 0}
puts div_by_four

#drop while on hash
non_o_nums = output_number.drop_while {|integer, word| word.include? "o" }
puts non_o_nums