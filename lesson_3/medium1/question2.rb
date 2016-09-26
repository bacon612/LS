statement = "The Flintstones Rock"
hash = {}
statement.scan(/\w/).each do |letter|
  letter_count = statement.scan(letter).count
  hash[letter] = letter_count
end

puts hash
