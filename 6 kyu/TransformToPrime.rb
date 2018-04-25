=begin
Task :
Given a List [] of n integers , find minimum mumber to be inserted in a list, so that sum of all elements of list should equal the closest prime number .

Input >> Output Examples
```1- minimumNumber ({3,1,2}) ==> return (1)```
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which will make the sum of the List equal the closest prime number (7) .

```2-  minimumNumber ({2,12,8,4,6}) ==> return (5)```
Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to prime number is (5) , which will make the sum of the List equal the closest prime number (37) .

```3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)```
Explanation:
Since , the sum of the list's elements equal to (189) , the minimum number to be inserted to transform the sum to prime number is (2) , which will make the sum of the List equal the closest prime number (191) .
=end


############## Refactored ###################
#
require 'prime'

def minimum_number(numbers)
  Prime.find {|n| n >= numbers.sum} - numbers.sum
end



#################### First Attempt #################
require 'prime'

def minimum_number(numbers)
  total = numbers.sum
  if total.prime?
    return 0
  end

  i = 0
  loop do
    i += 1
    total += 1
    puts i
    if total.prime?
      return i
      break
    end
  end

end


