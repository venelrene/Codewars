=begin
Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.

##Examples :

iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even

iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd

=end

def iq_test(numbers)
  arr = numbers.split.map(&:to_i)
  even = arr.select {|x| x.even? }


  if even.length == 1
    arr.find_index(even.first) + 1
  else
    odd = arr.select {|x| x.odd?}.first
    arr.find_index(odd) + 1
  end

end

####### Refactor 2nd attempt ###########

def iq_test(numbers)
  arr = numbers.split.map(&:to_i)
  even = arr.select {|x| x.even? }
  odd = arr.select {|x| x.odd?}

  even.length == 1 ? arr.find_index(even.first) + 1 : arr.find_index(odd.first) + 1

end