def high_and_low(numbers)
  list = numbers.split.map(&:to_i)
  "#{list.max} #{list.min}"
end

#Another BETTER way to refactor
# numbers.split.minmax_by(&:to_i).reverse.join(' ')