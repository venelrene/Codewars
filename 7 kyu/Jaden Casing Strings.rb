class String
  def toJadenCase
    split.map(&:capitalize).join(" ")
  end
end

def permutations(string)
  l = string.length
  i = 0
  x = l * l
  until i > x do
    i +=1
    box = []
    mix = string.split('').shuffle.join
    box << mix unless box.include?(mix)
  end
end