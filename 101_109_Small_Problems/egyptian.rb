# A Rational Number is any number that can be represented as the result of the 
# division between two integers, e.g., 1/3, 3/2, 22/7, etc. The number to the 
# left is called the numerator, and the number to the right is called the denominator.

# A Unit Fraction is a rational number where the numerator is 1.

# An Egyptian Fraction is the sum of a series of distinct unit fractions 
# (no two are the same), such as:

# 1   1    1    1
# - + - + -- + --
# 2   3   13   15
# Every positive rational number can be written as an Egyptian fraction. For example:

#     1   1   1   1
# 2 = - + - + - + -
#     1   2   3   6
# Write two methods: one that takes a Rational number as an argument, 
# and returns an Array of the denominators that are part of an Egyptian Fraction 
# representation of the number, and another that takes an Array of numbers in the 
# same format, and calculates the resulting Rational number. You will need to use 
# the Rational clas14 provided by Ruby.

#input: a rational number(n)
#output: the denominators of unit fractions that make up an egyption fraction equal to the rational number inputted

#algorithm: take rational number(n) and call .to_r on it
#assign variables to denominator and numerator with rational class methods
#divide denominator by the numerator and call to_f then .ceil and push this result into results array
#subtract 1/(last element in array) from (n). (n) must be in float form
#convert the resulting sum to a string and then .to_r
#loop or incriment the above process until there is no remainder

def egyptian(num)
  denom_ary = []
  rat_num = num.to_r
  denominator = rat_num.denominator
  numerator = rat_num.numerator
  denom_ary << (denominator.to_f / numerator).ceil
  mystery_num = (rat_num - (1.0/denom_ary.last)).to_r

end

p egyptian(2)