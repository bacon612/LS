family_members = {brother: "Julius", sister: "Maxine", uncle: "George", aunt: "Donna"}

immfam = family_members.select { |k,v| k == :brother || k == :sister }

puts immfam.values
