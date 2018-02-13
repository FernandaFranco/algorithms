# def sum_pairs(array, sum_value)
#   pair = {}
#   array.each_with_index do |first_candidate, first_index|
#     second_index = first_index + 1
#     second_candidate = array[second_index]
#     while second_index < array.size && (pair.empty? || second_index < pair.keys[1])
#       if first_candidate + second_candidate == sum_value
#         pair = {first_index => first_candidate, second_index => second_candidate}
#       end
#       second_index += 1
#       second_candidate = array[second_index]
#     end
#   end

#   return nil if pair.empty?
#   pair.values
# end

def sum_pairs(array, sum_value)
  previous_values = {}
  array.each do |second_candidate|
    first_candidate = sum_value - second_candidate
    if previous_values[first_candidate]
      return [first_candidate, second_candidate]
    else
      previous_values[second_candidate] = true
    end
  end
  nil
end

p sum_pairs([1,0,1,2,6,5], 1)
p sum_pairs([11, 3, 7, 5], 10)
p sum_pairs([4, 3, 2, 3, 4], 7)
p sum_pairs([0, 0, -2, 3], 2)
p sum_pairs([10, 5, 2, 3, 7, 5], 10)

big_ary = (1..10_000_000).map{rand(-10..10)}

p sum_pairs(big_ary, 15)
p sum_pairs(big_ary, 21)
