flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.map { |name| name.slice! 0..2  }