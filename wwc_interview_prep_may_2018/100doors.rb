# 100 doors

# 1st pass: toggle doors #1, #2, #3 ... #98 #99 #100
# 2nd pass: toggle doors #2, #4, #6 ... #96, #98, #100
# 3rd pass: toogle doors #3, #6, #9 ... #93, #96, #99
# .
# .
# .
# 49th pass: toogle doors #49 and #98
# 50th pass: toogle doors #50 and #100
# 51st pass: toogle door #51
# 52nd pass: toogle door #52
# .
# .
# .
# 98th pass: toogle door #98
# 99th pass: toogle door #99
# 100th pass: toogle door #100

##### unoptimized

# doors = Array.new(100, false)

# 100.times do |pass|
#   doors = doors.map.with_index do |door_opened, index|
#      (index + 1) % (pass + 1) == 0 ? !door_opened : door_opened
#   end
# end

# doors.each_with_index do |door_opened, index|
#   door_status = door_opened ? 'open' : 'closed'
#   puts "Door number #{index + 1} is #{door_status}."
# end

##### optimized

1.upto(100) do |door|
  status = 'closed'
  if (door ** 0.5) % 1 == 0
    status = 'open'
  end
  puts "Door #{door} is #{status}!"
end
