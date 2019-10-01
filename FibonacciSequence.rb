print "How many numbers in the Fibonacci sequence do you want? "
numbers_to_print = gets.to_i

sequence = [0, 1]

(1..numbers_to_print - 2).each do |i|
  sequence << sequence[i - 1] + sequence[i]
end

puts sequence.join(', ')
