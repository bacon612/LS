def halvsies(arr)
  arr_length = (arr.size) / 2
  ary2 = arr.slice(-arr_length, arr_length)
  arr_length += 1 if arr.size.odd? 
  ary1 = arr.slice(0, arr_length)
  [ary1, ary2]
end


p halvsies([1, 2, 3, 4, 5, 6, 7, 8, 9])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])