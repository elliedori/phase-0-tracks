# Take a name, split it on the space to get first & last
# Switch first & last
# Map each vowel to the next vowel
# Map each consonant to the next one
# Return the result

def name_scramble(name)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"

  spy_name = name.downcase.chars.map do |letter|

    #vowel replacement
    if vowels.include? letter
      current = vowels.index(letter)
      #looping back to first vowel in case it's the last one
      if current + 1 == vowels.length
        letter = vowels[0]
      else
        letter = vowels[current+1]
      end

    #consonant replacement
    else
      current = consonants.index(letter)
      # looping back to first consonant in case it's the last one
      if current + 1 == consonants.length
        letter = consonants[0]
      else
        letter = consonants[current+1]
      end
    end
    end
 spy_name = spy_name.join.capitalize
end


def spy_namer(name)
  full_name = name.split(' ')

  #only switch the names if a full name has been given
  if full_name.length > 1
  full_name[0], full_name[1] = full_name[1], full_name[0]
  end 

  full_name.map! {|name| name_scramble(name)}
  full_name.join(' ')
end


puts "Enter a name and we'll tell you the translated spy name! 
When you're done just type 'quit'"
generated_names = {}
input = ""
while true
  input = gets.chomp
  if input == "quit"
    break
  else
    puts spy_namer(input)
    generated_names[input] = spy_namer(input)
  end
end

generated_names.each {|real_name, spy_name| puts "#{spy_name} is really #{real_name}"}
puts "Thanks for using the spy name scrambler! Good luck on your next mission :)"

