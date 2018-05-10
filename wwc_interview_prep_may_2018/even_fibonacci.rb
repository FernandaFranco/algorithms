previous_fibonacci = 1
current_fibonacci = 2
next_fibonacci = previous_fibonacci + current_fibonacci

even_values = []
while current_fibonacci < 4000000
  if current_fibonacci % 2 == 0
    even_values << current_fibonacci
  end
  previous_fibonacci = current_fibonacci
  current_fibonacci = next_fibonacci
  next_fibonacci = previous_fibonacci + current_fibonacci
end

p even_values.reduce(&:+)
