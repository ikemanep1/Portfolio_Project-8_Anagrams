#!/usr/bin/env ruby
require('./lib/prime_sifter')

puts('please give Ike a word or phrase')
result1 = gets.chomp
puts('that was tasty. Ike wants another word or phrase')
result2 = gets.chomp

input = word.new(result1, result2)
puts user_input.anagram_check(result1, result2)
