require "pry"
class PigLatinizer
  attr_accessor :word

def piglatinize(phrase)
  each_word = phrase.split(" ")
  result = each_word.collect do |word|

  if !consonant(word[0])
    word += "w"
  elsif consonant(word[0]) && consonant(word[1]) && consonant(word[2])
    word = word.slice(3..-1) + word.slice(0..2)
  elsif consonant(word[0]) && consonant(word[1])
    word = word.slice(2..-1) + word.slice(0..1)
  else
    word = word.slice(1..-1) + word[0]
  end
  word << "ay"
end
result.join(" ")
end
  def consonant(character)
    vowels = /[aeiouAEIOU]/
    !character.match(vowels)
  end



end
# result = []
#
# if word.split.length > 1
#   array = word.split
#   if consonant(array[0])
#     word_array = array.drop(1)
#   else
#     word_array = array
#   end
# #end
#
# elsif consonant()
#   if word.split.length == 1
#     result << word + "way"
#   else
#     result << word[0] + "way"
#   end
# #end
#
# elsif word.split.length == 1 && !vowels.include?(word[0].downcase)
#   split_word = word.split(/([aeiou].*)/)
#   result << split_word[1] + split_word[0] + "ay"
# #end
#   if word_array
#     word_array.each do |string|
#       split_word = string.split(/([aeiou].*)/)
#       result << split_word[1] + split_word[0] + "ay"
#     end
#   end
#   result.join(" ")
# end
#
