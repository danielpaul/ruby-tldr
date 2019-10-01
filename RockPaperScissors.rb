options = ['rock', 'paper', 'scissors']

computer_points = 0
user_points = 0

puts "Let's play rock paper scissors!"


loop do
  user_picks = nil

  until options.include?(user_picks)
    print "Rock, Paper or Scissors?"
    user_picks = gets.chomp.downcase
  end

  user_picks = options.index(user_picks)

  # 0 = rock
  # 1 = paper 
  # 2 = scissors
  computer_picks = rand(2)

  puts "I pick: #{options[computer_picks]}"

  if user_picks == computer_picks

    puts "We picked the same! Nothing happens!"

  elsif user_picks - computer_picks == 1

    puts "You get a point! #{options[user_picks]} beats #{options[computer_picks]}"
    user_points += 1

  else

    puts "I get a point! #{options[computer_picks]} beats #{options[user_picks]}"
    computer_points += 1

  end

  # create some space
  puts "You: #{user_points}, Me: #{computer_points}"
  puts ""

  # best of 3
  if computer_points >= 3 || user_points >= 3
    puts "Game over!"
    break
  end

end
