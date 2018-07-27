=begin
Define String.prototype.toAlternatingCase (or a similar function/method such as to_alternating_case/toAlternatingCase/ToAlternatingCase in your selected language; see the initial solution for details) such that each lowercase letter becomes uppercase and each uppercase letter becomes lowercase. For example:

=end

class String
  def to_alternating_case
#     self.chars.map{|letter| letter == letter.upcase ? letter.downcase : letter.upcase}.join
    self.swapcase
  end
end