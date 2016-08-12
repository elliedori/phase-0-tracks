def bag_search
  bag = ["wallet", "phone", "calculator", "gum", "key"]
  puts bag
  puts "This is right before our block"
  yield
  puts "Our block just ran. Wasn't it great?"

end

bag_search do |item|
  if bag.include? (item)
    puts "You've got it in the bag!"
  else
    puts "Better luck next time"
  end
end