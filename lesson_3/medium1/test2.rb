

statement = "The Flintstones Rock"

puts statement.scan(/\w/).each_with_object(Hash.new(0)) { |c, h| h[c] += 1 }

