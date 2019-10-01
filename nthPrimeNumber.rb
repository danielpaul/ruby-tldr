def is_prime?(num)
  return if num <= 1
  (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
end

print "Enter the Nth prime number you want to find: "
nth_prime = gets.to_i

# keep track of the number of prime numbers we have found
prime_numbers_found = 0

# start loop from 2 which is the first prime number
i = 2

# infinate loop till we find the number we are looking for
loop do
  if is_prime?(i)

    # we found a prime!
    prime_numbers_found += 1

    # if this is the nth number, then print and break
    if nth_prime == prime_numbers_found
      puts "The #{nth_prime}th number is #{i}"
      break
    end 

  end

  i += 1
end
