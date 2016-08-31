contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

	
details = [:email, :address, :phone]	

details.each do | x |
	contacts["Joe Smith"][x] = contact_data.shift
	end
	
puts contacts