def time_of_day(int)
  return "00:00" if int.zero?
  if int.positive?
    int %= 1440 if int > 1440
    hours, minutes = int.divmod(60)
  else
    int *= -1
    int %= 1440 if int > 1440
    hours, minutes = int.divmod(60)
    hours = 23 - hours
    minutes = 60 - minutes
  end
  (format '%02d', hours) + ':' + (format '%02d', minutes)
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)
