# Take a name, split it on the space to get first & last
# Switch first & last
# Map each vowel to its next vowel
# Map each constonant to the next one
# Return the result

def spy_namer (name)
  full_name = name.split(' ')

  first_name = full_name[0]
  last_name = full_name[1]

  spy name = last_name + ' ' + first_name

  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"

raw_spy_name = spy_name.chars.map! do |letter|
  # case for replacing a vowel
    if vowels.include? letter
      current = vowels.index('letter')
      if current + 1 = vowels.length
        letter = vowels[0]
      else
        letter = vowels[current+1]
      end
  # case for replacing a consonant
    else
      current = consonants.index('letter')
      if current + 1 = consonants.length
        letter = consonants[0]
      else
        letter = consonants[current+1]
      end
    end
  end


