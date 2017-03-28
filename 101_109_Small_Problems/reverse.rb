def reverse!(ary)
  return ary if ary.empty?
  ary_size = (ary.size) -1
  count = 0
  loop do
    ary.insert(count, ary.delete_at(ary_size))
    count += 1
    break if count == ary.size
  end
  ary
end

# def reverse!(arr)
#   arr.sort_by!.with_index { |_, idx| -idx }
# end

# p list = [1,2,3,4]
# result = reverse!(list)
# p list
# p list.object_id
# p result.object_id
p reverse!([1, 2, 3, 4])
p reverse!(%w(a b c d e))
p reverse!(['abc'])
p reverse!([])
