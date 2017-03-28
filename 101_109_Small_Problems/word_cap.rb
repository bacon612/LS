# Input : single string
# Output : first letter of every word in the string is capitalized

# Test cases:
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# def word_cap(str)
#   mapped_ary = str.split.map {|word| word.capitalize}
#   mapped_ary.join(' ')

# end

def word_cap(str)
  str.downcase.gsub(/(?<=\A|\s)\S/, &:upcase)
end

p word_cap('four score and seven')
p word_cap('the javaScript language')
p word_cap('this is a "quoted" word')