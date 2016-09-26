# iterate over munster hash
# isolate gender
# calculate and display male munster aggregate age

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}
total_male_age = 0
munsters.each do | name, details|
  case details["gender"]
  when "male"
    total_male_age = total_male_age + details["age"]
  end  
end

puts total_male_age