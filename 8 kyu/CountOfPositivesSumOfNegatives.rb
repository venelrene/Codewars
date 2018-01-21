def count_positives_sum_negatives(lst)
  positive = lst.select{|num| num.positive?}.count
  negative = lst.select{|num| num.negative?}.reduce(:+)
  if negative.nil? then negative = 0 end
  return positive, negative
end