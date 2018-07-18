def find_unique(numbers)
#   numbers.find {|num| numbers.count(num) == 1}  ## 1st attempt = failed timing
#   numbers.detect { |n| numbers.index(n) == numbers.rindex(n) } ## 2nd attempt = failed timing
  numbers.group_by(&:itself).find {|num, num_self| num_self.size == 1}.first # passed

end