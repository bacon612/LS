array1 = [10, 20, 30, 40, 50]

array2 = []

array1.each do |numbers| 
	array2.push numbers +2
	end 

p array1
p array2