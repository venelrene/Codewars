#Write a function that will find all the anagrams of a word from a list.
#You will be given two inputs a word and an array with words.
#You should return an array of all the anagrams or an empty array if there are none.
#What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

 #'abba' & 'baab' == true

 #'abba' & 'bbaa' == true



def anagrams(word, words)
  sorted_chars = word.chars.sort
  words.select { |word| word.chars.sort == sorted_chars }
end