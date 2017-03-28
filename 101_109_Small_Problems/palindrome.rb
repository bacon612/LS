def palindrome?(word)
  word == word.reverse
end

# p palindrome?('Madam')
# p palindrome?('123321')
# p palindrome?('adam')
# p palindrome?([1, 2, 3, 3, 2, 1])

def real_palindrome?(word)
  cleaned_up_word = word.downcase.scan(/[a-zA-Z]/).join
  palindrome?(cleaned_up_word)

end



p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')