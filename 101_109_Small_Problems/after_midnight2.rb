def after_midnight(t24)
  hours = t24.chars[0..1].join
  minutes = t24.chars[3..4].join
  hours_in_mins = hours.to_i * 60
  time_of_day_in_mins = hours_in_mins + minutes.to_i
  return 0 if time_of_day_in_mins == 1440
  time_of_day_in_mins
end

def before_midnight(t24)
  return 0 if t24 == '00:00' || t24 == '24:00'
  1440 - after_midnight(t24)
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')
