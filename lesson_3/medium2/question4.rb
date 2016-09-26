sentence = "Humpty Dumpty sat on a wall."

words = sentence.split(/\W/)
words.reverse!
reverse_sentence = words.join(' ') + '.'
puts reverse_sentence
