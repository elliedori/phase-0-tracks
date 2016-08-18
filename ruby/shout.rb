module Shout
  def self.yell_angrily(words)
      words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!!" + " :D"
  end
end

#driver code to test module methods

puts Shout.yell_angrily("I'm so mad")
puts Shout.yelling_happily("that's amazing")