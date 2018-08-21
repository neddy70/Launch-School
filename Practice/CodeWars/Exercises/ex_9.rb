# ex_9.rb
# The prime numbers are not regularly spaced. For example from 2 to 3 the gap is 1. From 3 to 5 the gap is 2. From 7 to 11 it is 4. Between 2 and 50 we have the following pairs of 2-gaps primes: 3-5, 5-7, 11-13, 17-19, 29-31, 41-43

# A prime gap of length n is a run of n-1 consecutive composite numbers between two successive primes (see: http://mathworld.wolfram.com/PrimeGaps.html).
#
# We will write a function gap with parameters:
#
# g (integer >= 2) which indicates the gap we are looking for
#
# m (integer > 2) which gives the start of the search (m inclusive)
#
# n (integer >= m) which gives the end of the search (n inclusive)
#
# In the example above gap(2, 3, 50) will return [3, 5] or (3, 5) or {3, 5} which is the first pair between 3 and 50 with a 2-gap.
#
# So this function should return the first pair of two prime numbers spaced with a gap of g between the limits m, n if these numbers exist otherwise nil or null or None or Nothing (depending on the language).
#
# In C++ return in such a case {0, 0}. In F# return [||]. In Kotlin return []
#
# #Examples: gap(2, 5, 7) --> [5, 7] or (5, 7) or {5, 7}
#
# gap(2, 5, 5) --> nil. In C++ {0, 0}. In F# [||]. In Kotlin return[]`
#
# gap(4, 130, 200) --> [163, 167] or (163, 167) or {163, 167}
#
# ([193, 197] is also such a 4-gap primes between 130 and 200 but it's not the first pair)
#
# gap(6,100,110) --> nil or {0, 0} : between 100 and 110 we have 101, 103, 107, 109 but 101-107is not a 6-gap because there is 103in between and 103-109is not a 6-gap because there is 107in between.
#
# Note for Go
# For Go: nil slice is expected when there are no gap between m and n. Example: gap(11,30000,100000) --> nil
#
# #Ref https://en.wikipedia.org/wiki/Prime_gap

# Understand the problem
# Take 3 numbers
# `g` which is the gap
# `m` which is the starting number
# `n` which is the max number
# Find the first pair of prime numbers with a gap `g`.
#
# Data:
# I: 3 x integer
# O: array with primes
#
# Solution
# Create an array with `m` as the first element
# then find the next prime after `m`, and save it at index 1 of the array
# if it's less than `n`, test if the gap is equal to `g`.
# if gap is not equal to `g`, move the element at position 1 in the array to position 0. Then repeat.
# Break if the second prime goes above `n`. Return nil if no pair is found.

# Algorithm
# SET pair_array = []
# (m..n).each do for each number
#   if number is prime
#     if gap between pair_array[0] and number == `g`
#       SET pair_array[1] to number
#     else
#       SET pair_array[0] to number
#     end
#   end
#   break if number > n or pair_array size == 2
# end
# if pair_array.size > 1
#   return pair_array
# else
#   return nil
# end



require 'prime'
def gap(g, m, n)
  pair_array = []
  (m..n).each do |number|
    if Prime.prime?(number)
      if pair_array.empty?
        pair_array << number
      elsif number - pair_array[0] == g
        pair_array << number
      else
        pair_array[0] = number
      end
    end
    return pair_array if pair_array.size > 1
  end
  nil
end

p gap(2,100,110)
p gap(2,100,110) == [101, 103]
p gap(4,100,110) == [103, 107]
p gap(6,100,110) == nil
p gap(8,300,400) == [359, 367]
p gap(10,300,400) == [337, 347]
p gap(11,30000,30011)
