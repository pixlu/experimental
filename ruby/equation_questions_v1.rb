def ask_question(question, answer)
  print "#{question} = "
  user_answer = gets.chomp.to_i
  if user_answer == answer
    puts "Correct!\n\n"
  else
    puts "Incorrect. The correct answer is #{answer}.\n\n"
  end
end

puts "Welcome to the Math Quiz!\n\n"

# Question 1 to 20
ask_question("1 + 2", 3)
ask_question("5 * 4", 20)
ask_question("10 / 2", 5)
ask_question("8 - 6", 2)
ask_question("7 + 9", 16)
ask_question("6 * 7", 42)
ask_question("20 / 5", 4)
ask_question("4 - 3", 1)
ask_question("11 + 13", 24)
ask_question("9 * 8", 72)
ask_question("15 / 3", 5)
ask_question("10 - 7", 3)
ask_question("16 + 14", 30)
ask_question("12 * 6", 72)
ask_question("25 / 5", 5)
ask_question("15 - 8", 7)
ask_question("5 * 5", 25)
ask_question("18 / 3", 6)
ask_question("16 - 9", 7)
ask_question("20 + 10", 30)

puts "Congratulations! You've completed the Math Quiz!"
