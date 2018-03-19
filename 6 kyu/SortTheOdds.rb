# Y ou have an array of numbers.
# Your task is to sort ascending odd numbers but even numbers must be on their places.

# Zero isn't an odd number and you don't need to move it. If you have an empty array, you need to return it.

# Example

# sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]

def sort_array(source_array)
  # select and sort odd elements turn it into enumerator
  odds = source_array.select {|a| a.odd?}.sort.to_enum

  # if even then place element else next odd element
  source_array.map { |element| element.even? ? element : odds.next }
end



######### I prefer this option from brankoculum ##########
def sort_array(source_array)
  odds = source_array.select { |n| n.odd? }.sort
  source_array.map { |n| n.odd? ? odds.shift : n }
end