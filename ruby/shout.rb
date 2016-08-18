# module Shout
#   def self.yell_angrily(words)
#       words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words.upcase + "!!" + " :D"
#   end
# end

# #driver code to test module methods

# puts Shout.yell_angrily("I'm so mad")
# puts Shout.yelling_happily("that's amazing")


module Shout
  def yell_angrily(words)
      words + "!!!" + " :("
  end

  def yelling_happily(words)
    words.upcase + "!!" + " :D"
  end
end

class Parent
  include Shout
end

class Friend
  include Shout
end


# driver code to test mix-in module
parent = Parent.new
puts parent.yelling_happily("How awesome")
puts parent.yell_angrily("I can't believe this")


friend = Friend.new
puts friend.yelling_happily("No way")
puts friend.yell_angrily("How could you?")