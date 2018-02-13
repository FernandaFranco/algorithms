# def anagram_detection(parent, child)
#   anagrams(child).inject(0) do |sum, anagram|
#     if parent.include?(anagram)
#       sum += 1
#     else
#       sum
#     end
#   end
# end

# def anagrams(string)
#   ["Adn", "ndA", "dAn", "And", "dnA"]
# end

def anagram_detection(parent, child)
  n = 0
  sum = 0
  while n <= parent.length - child.length
    if parent[n, child.length].chars.all? {|char| child.include?(char)}
      sum += 1
    end
    n += 1
  end

  sum
end

p anagram_detection('AdnBndAndBdaBn', 'dAn')
p anagram_detection( 'AbrAcadAbRa', 'cAda')
