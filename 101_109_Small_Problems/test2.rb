def swap(string)
  string.split.each { |word| word[0], word[-1] = word[-1], word[0] }.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')