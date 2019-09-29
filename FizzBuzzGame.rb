puts Time.now.to_i

puts "Let's play!"

user_response = nil

loop do
  puts "Do you want to go first? (yes or no)"

  user_response = gets.chomp.downcase

  if user_response == 'yes' || user_response == 'no'
    break
  else
    puts "Sorry, I didn't get that..."
  end

end

user_points = 0

# Odd numbers are computer's turn. Even numbers are users.
turn = user_response == 'yes' ? 0 : 1

current_number = 1


loop do 

  if current_number % 3 == 0
    correct_answer = "fizz"
  elsif current_number % 5 == 0
    correct_answer = "buzz"
  else
    correct_answer = current_number.to_s
  end

  if turn % 2 == 0
    time_asked = Time.now.to_i

    # even numbers
    print "Your turn: "
    user_input = gets.chomp.downcase

    time_responded = Time.now.to_i
    time_diff = time_responded - time_asked

    if time_diff > 5
      puts "Hmm... you took #{time_diff} seconds to answer... sorry, too slow..."
      break
    end

    if user_input == correct_answer
      user_points += 1
    else
      puts "Oops! That's the wrong answer. You should have said #{correct_answer}! Good game!"
      break
    end

  else
    puts "I say: #{correct_answer}"
  end

  current_number += 1
  turn += 1
end

puts "Your score: #{user_points}"
