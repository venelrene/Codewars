=begin
Write a function called that takes a string of parentheses,
and determines if the order of the parentheses is valid.
The function should return true if the string is valid, and false if it's invalid.

Examples
"()"              =>  true
")(()))"          =>  false
"("               =>  false
"(())((()())())"  =>  true
=end


def valid_parentheses(string)
  valid = true
  only = string.chars.select {|x| x.match(/\(|\)/)}
  return false if only.size.odd?

  only.inject(0) do |counter, parenthesis|
    counter += (parenthesis == '(' ? 1 : -1)
    valid = false if counter < 0
    counter
  end.zero? && valid

end
