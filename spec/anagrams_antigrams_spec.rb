require('rspec')
require('anagrams_antigrams')

describe('#anagrams_antigrams') do
  it('checks if two words are anagrams') do
    test = Matrix.new(fate, feat)
    expect(test.prime_sift()).to(eq("YES!"))
  end
end
