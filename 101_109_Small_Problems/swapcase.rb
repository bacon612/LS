# input: string
# output: each letter in the string has its case swapped

# test cases: 
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# algorithm: split string into an array of characters
# map through the array of characters detecting if characters are upper case 
# or lower case and convert them with an if statement. use join (' ') to h join
# array after

def swapcase(str)
  mapped_ary = str.split('').map do |chars|
    if chars == chars.upcase
      chars.downcase
    elsif chars == chars.downcase
      chars.upcase
    end
    end
mapped_ary.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')