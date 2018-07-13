
=begin

It's Friday the 13th, and Jason is ready for his first killing spree!

Create a function, killcount, that accepts two arguments: an array of array pairs (the conselor's name and intelligence - ["Chad", 2]) and an integer representing Jason's intellegence.

=end

# First Attempt
#
def killcount(counselors, jason)
  counselors.collect {|conselors, iq| conselors if iq < jason }.compact
end

# Second Attempt

def killcount(counselors, jason)
  counselors.select {|conselors, iq| conselors if iq < jason }.map {|conselors, iq| conselors }
end