# def word_sizes(str)
#   counter_hash = {}
#   str.split.each do |word| 
#     if counter_hash[word.length]
#       counter_hash[word.length] = counter_hash[word.length] + 1
#     else
#       counter_hash[word.length] = 1
#     end
#   end
#   counter_hash
# en

def word_sizes(str)
  word_count = Hash.new(0)
  str.split.each { |word| word_count[word.gsub(/[^a-z]/i, '').size] += 1}
  word_count
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')