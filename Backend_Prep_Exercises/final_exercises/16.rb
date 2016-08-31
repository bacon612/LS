a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
	 

a2 = a.map {|x| x.split}
a2.flatten!
p a2