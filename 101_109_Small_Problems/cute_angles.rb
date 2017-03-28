
def dms(float)
  degrees = float.to_i
  minutes = ((float % 1) * 60)
  seconds = ((minutes % 1) * 60).to_i

  "%(#{degrees}°#{sprintf '%02d', minutes.to_i}'#{sprintf '%02d', seconds}\")"
end

puts dms(30)
puts dms(76.73)
puts dms(93.034773)
puts dms(0)
puts dms(460)