# Pig Latin is an English language game where the goal is to hide the meaning of a 
# word from people not aware of the rules.

# The rules themselves are rather easy:

# 1) The word starts with a vowel(a,e,i,o,u) -> return the original string plus "way".

# 2) The word starts with a consonant -> move consonants from the beginning of the 
# word to the end of the word until the first vowel, then return it plus "ay".

# 3) The result must be lowercase, regardless of the case of the input. If the input 
# string has any non-alpha characters, the function must return None, null, Nothing 
# (depending on the language).

# 4) The function must also handle simple random strings and not just English words.

# 5) The input string has no vowels -> return the original string plus "ay".

# For example, the word "spaghetti" becomes "aghettispay" because the first two 
# letters ("sp") are consonants, so they are moved to the end of the string and 
# "ay" is appended.

# input: str
# output: str transformed based on rules
# rules:
  # if str starts w/ vowel (aeiou) then return str + 'way'
  # if str starts w/ consonant, then move consecutive consonants to end of word,
  #   + 'ay'
  # result must be lowercase
  # return nil if str contains any non alpha
  # return str + 'ay' if no vowels
# algorithm:
  # return nil if word[/[^a-z]/i]
  # return word + 'ay' if !word[/[aeiou]/i] 
  # if word.start_with?('a', 'e', 'i', 'o', 'u')
  #   return word + 'way' 
  # else
  #   consonants = word.slice!(/\A[^aeiou]+/i)
  #   consonants + word + 'ay'
  
def pig_latin(word)
  return nil if word[/[^a-z]/i]
  return word + 'ay' if !word[/[aeiou]/i] 
  if word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
    word + 'way' 
  else
    consonants = word.slice!(/[^aeiou]+/i)
    word + consonants + 'ay'
  end
end
  
  

p pig_latin("map")   # "apmay"
p pig_latin("ghost")   # "ostghay"
p pig_latin("egg")   # "eggway"
p pig_latin("sky")   # "gggay"
p pig_latin("tes3t5")   # nil