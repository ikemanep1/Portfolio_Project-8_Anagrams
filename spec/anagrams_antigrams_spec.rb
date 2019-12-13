require('rspec')
require('anagrams_antigrams')

describe('#anagrams_antigrams') do
  it('checks if two words are anagrams') do
    test = Word.new("fate", "feat")
    expect(test.anagram_check("fate", "feat")).to(eq("fate and feat are anagrams"))
  end
end
