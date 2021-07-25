array = [4, 8, 2, 6, -7, 8, 9]
# i = 0
# sum = 0

# while i < array.size
#   break if array[i] < 0
#   sum += array[i]
#   i += 1
# end

# puts sum
sum = 0

while true
  print "Enter a number: "
  num = gets.chomp.to_i
  break if num < 0
  sum += num
end

puts sum