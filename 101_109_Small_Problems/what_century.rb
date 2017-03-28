def century(str)
  if (1..99).include?(str)
    puts "1st"
  # elsif str.to_i == (100..199)
  #   puts "2nd"
  # elsif str.to_i == (200..299)
  #   puts "3rd"
  # elsif str.to_i == (300..399)
  #   puts '4th'
  end
end

century(81)
century(203)