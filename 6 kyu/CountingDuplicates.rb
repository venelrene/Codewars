=begin
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string.
The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (bandB)
=end

def duplicate_count(text)
    # iterate over each chars, ensureing there'no sorting or case issue
    # sorted just for readaility with longer strings
    sorted = text.downcase.chars.sort
    # iterate through each value counting how many time we have a unique encounter
    b = sorted.inject(Hash.new(0)) {|key, value| key[value] += 1; str}
    b.count do |value, count|
      count > 1
    end
end

#### Refactored

def duplicate_count(text)
  # iterate over each chars creatign an array
  arr = text.downcase.chars
  # pulling out the uniq char and counting how many times
  # they appear in the array more than once
  arr.uniq.count {|n| arr.count(n) > 1}
end
