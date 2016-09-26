# iterate over munster hash
# isolate gender
# calculate and display male munster aggregate age

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

munsters.each do | name, details|
  puts "#{name} is a #{details["age"]} year old #{details["gender"]}."
end

