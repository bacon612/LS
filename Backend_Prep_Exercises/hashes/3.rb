Disney_Characters = {Peter_Pan: 'Captain Hook', Aladdin: 'Abu'}

Disney_Characters.each_key { |key| puts key}
Disney_Characters.each_value { |value| puts value}
Disney_Characters.each { |key, value| puts "The name of one of the characters in the Disney movie,
#{key} are #{value}"}


	