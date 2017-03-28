# def crunch(str)
#   str.split.map { |word| word.split('').uniq}
# end

# p crunch('ddaaiillyy ddoouubbllee')

# p crunch('4444abcabccba')

# p crunch('ggggggggggggggg')

# p crunch('a')

# p crunch('')

# def crunch(str)
#   str.split.map do |word|
#     word = word.split('')
#     loop do
#       word.each_with_index do |letter, idx|
#         if letter == word[idx + 1]
#         word.delete_at(idx + 1)
#         end
#       end
#     break if
#   end.join
# end

def crunch(str)
  str.split.map do |word| 
    word.split('').select.with_index do |letter, idx|
      letter != word[idx + 1]
    end.join
  end.join(' ')
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')
