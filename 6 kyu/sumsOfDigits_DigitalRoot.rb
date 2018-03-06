
#============== first attempt =============

def digital_root(n)

  num = n.to_s.split("").map(&:to_i).reduce(0, :+)
  until num.to_s.length == 1
    num = num.to_s.split("").map(&:to_i).reduce(0, :+)
  end
  num

end

# ================= refactored ===============
def digital_root(n)

  n = n.to_s.split("").map(&:to_i).reduce(0, :+) until n.to_s.length < 2
  n

end