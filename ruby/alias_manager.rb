# Take a name, split it on the space to get first & last
# Switch first & last
# Map each vowel to its next vowel
# Map each constonant to the next one
# Return the result

def name_scramble(name)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"

  spy_name = name.chars.map do |letter|

    #vowel replacement
    if vowels.include? letter
      current = vowels.index(letter)
      p current
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
 spy_name = spy_name.join
end




def spy_namer(name)
  full_name = name.split(' ')
  full_name.map! {|name| name_scramble(name)}
  full_name[0], full_name[1] = full_name[1], full_name[0]
  full_name.join(' ')
end

p spy_namer('britney hodson')

