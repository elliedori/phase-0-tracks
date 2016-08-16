# Method to print a list and make it look pretty
# input: using a loop to iterate through each pair in the hash
# steps: tell it what to do with each pair (i.e. print it inside of this fancy string)
# output: each string with interpolated data, return nil?

require "pry"

def list_writer(list)
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

def list_adder(list, item, quantity)
  list[item] = quantity
end

# Method to remove an item from the list
# input: using a pre-existing hash method, give it the input of the key of the pair I want to delete
# steps: the method deletes it
# output: the updated hash

def item_remover(list, item)
  list.delete(item)
end

# Method to update the quantity of an item
# input: hash of specific item now equals new quantity 
# steps: the method updates the quantity
# output: returns the updated hash

def item_updater(list, item, quantity)
  list[item] = quantity
end


# driver code to test methods are working correctly
grocery_list = {}
list_creator(grocery_list, "carrots apples cereal pizza")
list_adder(grocery_list, "potatoes", 6)
p grocery_list
item_remover(grocery_list, "apples")
p grocery_list
item_updater(grocery_list, "carrots", 3)
p grocery_list














