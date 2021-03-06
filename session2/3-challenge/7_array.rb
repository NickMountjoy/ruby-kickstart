# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]


def alternate_words(words)
x = words.gsub(/[ ! @ $ # % ^ & * ( ) \- = _ + [ ] : ; , . \/ < > ? \\ | ]/, " ")

array = x.split(" ")

array_2 = []
array.each_index { |x| array_2 << array[x] if x.even?}
array_2
end

#"hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
#"hello".gsub(/([aeiou])/, '<\1>')             #=> "h<e>ll<o>"
#"hello".gsub(/./) {|s| s.ord.to_s + ' '}      #=> "104 101 108 108 111 "
#"hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')  #=> "h{e}ll{o}"
#'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')    #=> "h3ll*"