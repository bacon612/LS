def remove_vowels(ary)
  ary.map { |string| string.gsub(/[aeiou]/i, '')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))