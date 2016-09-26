sample_string = "my friend just bought an expensive home"

def my_titleize(string)
  array = string.scan(/\w+/)
  array.each do |word|
  word.capitalize!
end
  array.join(' ')
end

p my_titleize(sample_string)

#or

words = "Holy cow! My friend bought an expensive house"

puts words.split.each { |word| word.capitalize! }.join(' ')