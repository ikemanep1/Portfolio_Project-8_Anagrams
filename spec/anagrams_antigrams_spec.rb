require('rspec')
require('anagrams_antigrams')

describe('#anagrams_antigrams') do
  it('checks if two words are anagrams') do
    test = Word.new("fate", "feat")
    expect(test.anagram_check("fate", "feat")).to(eq("fate and feat are anagrams"))
  end
  it('checks if functionality accounts for capital letters') do
    test = Word.new("Fate", "feat")
    expect(test.anagram_check("Fate", "feat")).to(eq("Fate and feat are anagrams"))
  end
  it('checks if functionality accounts for "words" that do not have vowels in them') do
    test = Word.new("NRSST", "NTSR")
    expect(test.anagram_check("NRSST", "NTSR")).to(eq("NRSST and NTSR are not anagrams"))
  end
  it('checks for antigrams') do
    test = Word.new("meal", "foot")
    expect(test.anagram_check("meal", "foot")).to(eq("meal and foot are antigrams"))
  end
  it('checks for anagrams in a phrase') do
    test = Word.new("'bad credit'", "'debit card'")
    expect(test.anagram_check("bad credit", "debit card")).to(eq("'bad credit' and 'debit card' represent an example of an anagram phrase"))
  end
end
