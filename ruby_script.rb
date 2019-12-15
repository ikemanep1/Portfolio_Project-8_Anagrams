#!/usr/bin/ruby env ruby
require('./lib/anagrams_antigrams')

puts('please give Ike a word or phrase')
result1 = gets.chomp
puts('that was tasty. Ike wants another word or phrase')
result2 = gets.chomp

input = Word.new(result1, result2)
puts input.anagram_check(result1, result2)
