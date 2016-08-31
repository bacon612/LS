array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#oddsarray = []
#array.select do |x| 
	#if x.odd? 
		#oddsarray.push(x) 
	#end
	#end
#puts oddsarray


odds = array.select {|x| x.odd?}

array_two = []

array_two.push(odds)

puts array
puts array_two


