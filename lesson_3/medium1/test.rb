words = "Holy cow! My friend bought an expensive house"

puts words.split.each { |word| word.capitalize! }.join(' ')