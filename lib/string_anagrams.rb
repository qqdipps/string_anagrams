# A method to check if the two input strings are anagrams of each other
# Returns true if the two input strings are anagrams of each other.
# Returns false otherwise.

# Time complexity: O(n) where n is the number of elements in str1.
# Space complexity: O(1) though I did use some space for ascii_array, the space is not dependent on n
def string_anagrams(str1, str2)
  return false if !str1 || !str2 || str1.length != str2.length
  ascii_array = Array.new(57, 0)
  str1.length.times do |i|
    ascii_array[str1[i].ord - 65] += 1
    ascii_array[str2[i].ord - 65] -= 1
  end
  ascii_array.length.times { |i| return false if ascii_array[i] != 0 }
  return true
end
