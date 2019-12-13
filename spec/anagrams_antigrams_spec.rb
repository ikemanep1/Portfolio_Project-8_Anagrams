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
  it('checks if functionality accounts for capital letters') do
    test = Word.new("NRSST", "NTSR")
    expect(test.anagram_check("NRSST", "NTSR")).to(eq("NRSST and NTSR are not anagrams"))
  end
end
