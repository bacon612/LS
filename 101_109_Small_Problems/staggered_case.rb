# input: string
# output: a string in which every other character is capitalized
# test cases: staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# algorithym: split the string into characters. Map characters such that 
# every other character is the opposite case

def staggered_case(str)
  
  str.split('').map.with_index do |char, index|
    if index.odd?
      char.downcase
    else 
      char.upcase
    end
  end.join
end

p staggered_case('I Love Launch School!')

p staggered_case('ALL_CAPS')

p staggered_case('ignore 77 the 444 numbers')






