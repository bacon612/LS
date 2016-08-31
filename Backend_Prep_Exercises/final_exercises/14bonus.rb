contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"
"anna@banana.com", "8 Holt St.", "555-343-3232"]
contacts = {"Joe Smith" => {}, "Anna Stone" =>{}}

	
details = [:email, :address, :phone]	

contacts.each_with_index do |names, hash, index|
	details.each do |x|
		hash[x] = contact_data.shift
