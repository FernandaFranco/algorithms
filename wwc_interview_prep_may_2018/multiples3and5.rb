multiplier = 1
sum = 0

loop do
  current_sum = sum
  candidate = multiplier * 3
  sum += candidate unless candidate >= 10
  candidate = multiplier * 5
  sum += candidate unless candidate % 3 == 0 || candidate >= 10
  break if current_sum == sum
  multiplier += 1
end

p sum

sum = 0

(3...1000).each do |number|
  if number % 3 == 0 || number % 5 == 0
    sum += number
  end
end

p sum
