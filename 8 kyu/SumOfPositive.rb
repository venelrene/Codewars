def positive_sum(arr)
  tol = arr.delete_if{|x| x < 0}.reduce(:+)
  if tol == nil
    tol = 0
  end
  tol
end