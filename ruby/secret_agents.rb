# 1. 
#     For the characters in this word
#       If it's a space, keep it as a space
#       Take each character and replace it with the next character
#     End

def encrypt(word)
  index = 0
  while index < word.length
    if word[index] == " "
      word[index] = word[index]
    elsif word[index] == "z"
      word[index] = "a"
    else
      word[index] = word[index].next
    end
    index += 1
  end
  p word
end

# 2. 
#     For the characters in this word
#       If it's a space, keep it as a space   
#       Take each character, check its index in the alphabet
#       Replace that character with the one right before it
#     End


def decrypt(word)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < word.length
    if word[index] == " "
      word[index] = word[index]
    else
      position = alpha.index("#{word[index]}")
      word[index] = alpha[position - 1]
    end
    index += 1
  end
  p word
end

decrypt(encrypt("swordfish"))

# This works because we used p (which return the word). If we were to use print or puts,
# the method would return nil and we would get an error.
# This also works because Ruby interprets nested elements first before trying to interpret the
# entire expression. This was "swordfish" gets encrypted first, and then that encrypted text
# gets decrypted.





