### =begin
Write a function called that takes a string of parentheses,
and determines if the order of the parentheses is valid.
The function should return true if the string is valid, and false if it's invalid.

Examples
"()"              =>  true
")(()))"          =>  false
"("               =>  false
"(())((()())())"  =>  true
end= ###



validParentheses = (parentheses) ->

  balance = 0
  only = parentheses.split("")

  for char, i in only
    balance += 1 if char is '('
    balance -= 1 if char is ')'

    return false if balance < 0

  balance == 0

  