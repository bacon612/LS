puts "Please write a word or multiple words"
string = gets.chomp
puts "There are #{string.scan(/[a-zA-Z]/).count} letters in \"#{string}\"."