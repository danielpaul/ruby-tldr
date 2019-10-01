print "How many numbers in the Fibonacci sequence do you want? "
numbers_to_print = gets.to_i

# Alternative way of doing this without arrays
last_number = 1
last_last_number = 0

puts 0
puts 1

numbers_to_print.times do 
  new_number = last_last_number + last_number
  puts new_number

  last_last_number = last_number
  last_number = new_number  
end
