=begin
Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.

The output should be two capital letters with a dot seperating them.

It should look like this:

Sam Harris => S.H

Patrick Feeney => P.F
=end

# First attempt
def abbrev_name(name)
  name.split(" ").map{|n| n.capitalize.chars.first}.insert(1, ".").join
end

# Second Attempt
def abbrev_name(name)
  name.split(" ").map{|n| n.capitalize.chars.first}.join(".")
end

# Final Refactor
def abbrev_name(name)
  name.split.map { |s| s[0]}.join('.').upcase
end
