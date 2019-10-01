print "Enter a number: "
number = gets.to_i

is_prime = true

if number == 2

  # 2 is the only even prime number
  is_prime = true

elsif number == 0 || number == 1 || number % 2 == 0

  # 0, 1 and any even numbers are not prime numbers
  is_prime = false

else

  # loop through each number from 3 to the number under the number entered by the user
  (3..number - 1).each do |i|

    # skip all the even numbers
    if number % 2 == 0
      next
    end

    # if we find a number that is evenly divisible
    if number % i == 0
      is_prime = false

      # stop as we don't need to continue
      break 
    end

  end # end of loop

end

# print out our findings
if is_prime
  puts "#{number} is a prime number!!! Whoohoo!!"
else
  puts "#{number} is not a prime number."
end
