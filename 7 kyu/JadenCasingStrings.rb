=begin
Example:

    Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
    Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"

=end
class String
  def toJadenCase
    split.map(&:capitalize).join(" ")
  end
end
