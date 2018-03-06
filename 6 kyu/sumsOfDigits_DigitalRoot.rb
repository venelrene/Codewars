def digital_root(n)

  num = n.to_s.split("").map(&:to_i).reduce(0, :+)
  until num.to_s.length == 1
    num = num.to_s.split("").map(&:to_i).reduce(0, :+)
  end
  num

end