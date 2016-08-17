# Method to print a list and make it look pretty
# input: using a loop to iterate through each pair in the hash
# steps: tell it what to do with each pair (i.e. print it inside of this fancy string)
# output: each string with interpolated data, return nil?

def list_writer(list)
  puts "Here's your grocery list for the day:\n"
  puts "\n"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
end
end

# Method to create a list
# create an empty hash
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # separate the string into individual items
  # add each item to the hash, set default quantity
  # print the list to the console using a loop
# output: (hash), could also be a string with hash data inside

def list_creator(list, str)
  items = str.split(' ')
  items.each do |item|
    list[item] = 0
end
list_writer(list)
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: add the item name and quantity as a new pair into existing hash
# output: return hash

def list_adder(list, item, quantity = 1)
  list[item] = quantity
end

# Method to remove an item from the list
# input: using a pre-existing hash method, give it the input of the key of the pair I want to delete
# steps: the method deletes it
# output: the updated hash

def item_remover(list, item)
  if !list.include? (item)
    puts "Looks like that's not even on your list! No worries there :)"
  end
  list.delete(item)
end

# Method to update the quantity of an item
# input: hash of specific item now equals new quantity 
# steps: the method updates the quantity
# output: returns the updated hash

def item_updater(list, item, quantity)
  if !list.include? (item)
    puts "Looks like that item's not on your list! But we'll go ahead and add it for you."
  end
    list[item] = quantity
end


# driver code to test methods are working correctly
new_list = {}
list_adder(new_list, "lemonade", 2)
list_adder(new_list, "tomatoes", 3)
list_adder(new_list, "lemonade", 2)
list_adder(new_list, "onions", 1)
list_adder(new_list, "ice cream", 4)
item_remover(new_list, "lemonade")
item_updater(new_list, "ice cream", 1)
item_updater(new_list, "hamburgers", 2)
list_adder(new_list, "chives")
list_writer(new_list)

# What did you learn about pseudocode from working on this challenge?
# I learned that pseudocoding can be helpful in laying out a plan for how to build something.
# Sometimes I feel like pseudocoding is harder than the actual coding for me, because it makes more
# sense for me to think about something in terms of Ruby's syntax, rather than explaining what should
# be done in plain English.

# What are the tradeoffs of using arrays and hashes for this challenge?
# A hash makes more sense, given the format of item: quantity. One tradeoff is that printing the
# contents is a little more involved, since it requires a loop that takes two parameters instead of one.

# What does a method return?
# A method usually returns the result of its last line, unless an explicit return value is given.

# What kind of things can you pass into methods as arguments?
# You can pass arguments of any type! (i.e. hashes, arrays, numbers, strings, etc.)
# As long as what you're doing to each argument within the method
# is valid for that data type, you shouldn't run into problems.

# How can you pass information between methods?
# You can pass information between methods by keeping the information in a more general scope than each method.
# For example, here we kept the grocery_list hash at the same scope as the methods, and passed it in
# as an argument to each method, ensuring each method could modify it as needed.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I feel like refactoring for clarity was solidifed for me here, and thinking of new ways to expand
# methods to do things in a more refined or user-friendly way. It's important to give users explicit 
# feedback, especially when certain methods aren't printing anything out to the screen. I'm pretty clear
# on Ruby, no confusing concepts at this point :)






