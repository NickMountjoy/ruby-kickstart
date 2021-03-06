# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  def every_other_char
	to_return = ''

	each_char.with_index do |a, b|
    to_return << a if b.even?
	end
 	to_return
end
end


"abcdefg".every_other_char  # => "aceg"


