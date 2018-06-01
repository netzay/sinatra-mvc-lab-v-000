class PigLatinizer
  attr_reader :word

  def initialize
    @word = word
  end
  def piglatinize(word)
    word_array = word.split("")
    vowels = /\b[aeiouAEIOU]/
    consonants_3 = /\A(?i:(?![aeiou])[a-z]){3}/
    consonants_2 = /\A(?i:(?![aeiou])[a-z]){2}/
    consonant_1 = /\A(?i:(?![aeiou])[a-z]){1}/
    result = []

    if word_array[0].scan(vowels) != []
      result = [word_array[0..word_array.length-1]] + ["way"]
    end
    if word.scan(consonant_1) != []
      result = [word_array[1..word_array.length-1]] + [word_array[0]] + ["ay"]
    end
    if word.scan(consonants_2) != []
      result = [word_array[2..word_array.length-1]] + [word_array[0..1]] + ["ay"]
    end
    if word.scan(consonants_3) != []
      result = [word_array[3..word_array.length-1]] + [word_array[0..2]] + ["ay"]
    end
    return result.join("")
  end
end
