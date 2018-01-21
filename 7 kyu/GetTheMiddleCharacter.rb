def get_middle(s)
  l = s.length
  if l.even?
    div = (s.length) / 2
    n =  div - 1
    s[n..div]
  else
    div = (s.length) / 2
    s[div]
  end
end