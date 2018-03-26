def divisors(n)
  #your code here
  # takes an integer and returns an 
  # array with all of the integer's divisors(except for 1 and the number itself)
  # If the number is prime return the string '(integer) is prime'
  # Remeber: A prime number is any number that has no positive divisors other than itself and 1.
 result = (2..n/2).select {|i| n % i == 0 }
 if result.length == 0 
    return "#{n} is prime"
  else 
    return result
  end

end
