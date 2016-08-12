def bag_search
  item1 = "wallet"
  item2 = "keys"
  puts "I'm about to look in your bag"
  yield(item1, item2)
  puts "Now I know what's in your bag."

end

bag_search {|item1, item2| puts "Your bag has #{item1} and #{item2}"}