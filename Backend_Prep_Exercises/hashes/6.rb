words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
		  
sorted = {}

words.each do |x|
	sorter = x.split('').sort.join
	if sorted.has_key?(sorter)
		sorted[sorter].push(x)
	else
		sorted[sorter] = [x]
	end
end



sorted.each do |k, v|
		p v
end

