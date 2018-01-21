def digitize(n)
  n.to_s.chars.reverse.map{|n| n.to_i}
end