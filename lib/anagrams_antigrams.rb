class Word
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2
    @output = ("")
  end

  def anagram_check(input1, input2)
    input1 = @input1.upcase.chars.to_a.sort.join()
    input2 = @input2.upcase.chars.to_a.sort.join()
    word_check = input1.scan(/[AEIOU]/).length()
    if (input1 != input2)
      @output = [@input1, " and ", @input2, " are not anagrams"]
      @output.join("")
    elsif (input1 != input2) && (word_check == 0)
      @output = [@input1, " and ", @input2, " are not anagrams, because they are not words!"]
      @output.join("")
    elsif (input1 == input2) && (word_check == 0)
      @output = [@input1, " and ", @input2, " are not anagrams, because they are not words!"]
      @output.join("")
    else
      @output = [@input1, " and ", @input2, " are anagrams"]
      @output.join("")
    end
  end
end
