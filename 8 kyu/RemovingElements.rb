def remove_every_other(arr)
  arr.each_slice(2).map(&:first)
end