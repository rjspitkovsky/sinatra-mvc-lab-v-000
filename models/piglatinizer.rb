class PigLatinizer

  attr_reader :text

  @@vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

  def initialize
    @text = text
  end

  def piglatinize_sentence(sentence)

    sentence.split(" ").each do |word|
      puts piglatinize(word)
    end

  end



  def piglatinize(word)

      # if word.length == 1
      #   new_word = word + "way"
      # elsif @@vowels.include?(word[0]) && word.length > 1
      #   new_word = word + "way"
      # end
      new_word = ""
    word.each_char.with_index(0) do |letter, i|
      if @@vowels.include?(letter) && word.length > 1
        new_word = word[i..-1] + word[0...i-1] + "ay"
      else
        new_word = word + "way"
      end
    end
    new_word
  end
  #
  #   if word.length == 1
  #     new_word = word + "way"
  #   elsif @@vowels.include?(word[0]) && word.length > 1
  #     new_word = word + "way"
  #   elsif @@vowels.include?(word[1])
  #     new_word = word[1..-1] + word[0] + "ay"
  #   elsif @@vowels.include?(word[2])
  #     new_word = word[2..-1] + word[0..1] + "ay"
  #   elsif @@vowels.include?(word[3])
  #     new_word = word[3..-1] + word[0..2] + "ay"
  #   end
  #   new_word
  # end

end
