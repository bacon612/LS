def letter_swap(str)
  new_str = str.split.map do |word|
    word = word.chars
    last_letter = word.pop
    word = word.rotate.join
    word.prepend(last_letter)
  end
  new_str.join(' ')
end

p letter_swap('Oh what a wonderful day it is')
p letter_swap('Abcde')
p letter_swap('a')