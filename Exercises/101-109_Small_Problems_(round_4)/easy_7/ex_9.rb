# ex_9.rb

# Multiply All Pairs
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.
#
# You may assume that neither argument is an empty Array.
#
# Examples:
#
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# def multiply_all_pairs(arr1, arr2)
#   arr1.product(arr2).map { |sub_arr| sub_arr.reduce(:*) }.sort
# end
#
# p multiply_all_pairs([2, 4], [4, 3, 1, 2])


def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |el1|
    arr2.each do |el2|
      products << el1 * el2
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
