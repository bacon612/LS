def triangle(int)
  spacer = int -1
  counter = 1
  int.times do
    puts (' ' * spacer) + ('*' * counter)
    spacer -= 1
    counter += 1
  end
end
 
triangle(5)
triangle(6)