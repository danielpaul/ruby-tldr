print "How many numbers in the Fibonacci sequence do you want? "
numbers_to_print = gets.to_i

# hard code the first two numbers of the sequence
sequence = [0, 1]

# i keeps track of array positions
(1..numbers_to_print - 2).each do |i|
  sequence << sequence[i - 1] + sequence[i]
end

puts sequence.join(', ')
