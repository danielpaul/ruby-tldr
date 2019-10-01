puts "Hey there! Welcome to the guessing game."
puts "I am going to think of a number between 0 to 9 and you are going to guess it."

number = rand(9)
puts "Okey, I've tought of a number."

number_of_trys = 0

loop do
  print "What do you think it is? "
  guess = gets.to_i

  number_of_trys += 1

  if guess == number
    break
  elsif guess < number
    puts "A little bit higher..."
  else
    puts "A little bit lower..."
  end

end

puts "WhooHoo! You got it in #{number_of_trys} guesses."
