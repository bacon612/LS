def interleave(ary1, ary2)
  ary1.zip(ary2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])