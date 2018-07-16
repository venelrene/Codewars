=begin
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to it's position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.
=end



######################## First Attempt ######################
def high(x)

  result = []
  word_array = x.split

  word_array.each do |word|
    letter_array = word.split("")
    num = letter_array.map {|letter| letter.upcase.ord - 'A'.ord + 1 }
    result << num.sum

  end

  max_index = result.index(result.max)
  word_array[max_index]

end