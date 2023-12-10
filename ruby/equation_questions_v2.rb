require 'timeout'

def ask_question(question, answer)
  print "#{question} = "
  begin
    Timeout.timeout(45) do
      user_answer = gets.chomp.to_i
      if user_answer == answer
        puts "Correct!\n\n"
      else
        puts "Incorrect. The correct answer is #{answer}.\n\n"
      end
    end
  rescue Timeout::Error
    puts "Time's up! The correct answer is #{answer}.\n\n"
  end
end

puts "Welcome to the Math Quiz!\n\n"

# Questions 1 to 50
ask_question("1 + 2", 3)
ask_question("5 * 4", 20)
ask_question("(10 / 2) + 3", 8)
ask_question("8 - 6", 2)
ask_question("(7 + 9) * 2", 32)
ask_question("6 * 7", 42)
ask_question("(20 / 5) + 1", 5)
ask_question("4 - 3", 1)
ask_question("11 + 13", 24)
ask_question("9 * 8", 72)
ask_question("(15 / 3) - 1", 4)
ask_question("10 - 7", 3)
ask_question("(16 + 14) / 2", 15)
ask_question("12 * 6", 72)
ask_question("(25 / 5) - 1", 4)
ask_question("15 - 8", 7)
ask_question("5 * 5", 25)
ask_question("(18 / 3) + 1", 7)
ask_question("16 - 9", 7)
ask_question("20 + 10", 30)
ask_question("(2 + 3) * (4 - 2)", 10)
ask_question("7 * (8 / 2)", 28)
ask_question("(3 + 5) * 2", 16)
ask_question("10 - (3 * 2)", 4)
ask_question("(14 / 2) + 1", 8)
ask_question("6 * (4 + 2)", 36)
ask_question("(9 + 3) / 2", 6)
ask_question("15 - (7 + 3)", 5)
ask_question("5 * (6 - 1)", 25)
ask_question("(12 / 3) + 2", 6)
ask_question("8 - (4 * 1)", 4)
ask_question("(16 + 9) / 5", 5)
ask_question("18 / (3 + 1)", 4)
ask_question("7 * (2 + 1)", 21)
ask_question("(5 * 2) - 1", 9)
ask_question("(10 / 2) * 3", 15)
ask_question("4 - (2 + 1)", 1)
ask_question("(6 * 3) / 2", 9)
ask_question("(14 / 7) + 1", 3)
ask_question("9 * (8 / 2)", 36)
ask_question("(3 + 2) * 4", 20)
ask_question("12 - (4 * 2)", 4)
ask_question("(10 / 5) + 2", 4)
ask_question("6 * (5 - 2)", 18)
ask_question("(16 + 7) / 2", 11)
ask_question("14 / (2 + 1)", 4)
ask_question("3 * (4 + 1)", 15)
ask_question("(9 + 2) / 3", 3)
ask_question("5 - (2 * 1)", 3)
ask_question("(8 * 2) / 4", 4)
ask_question("7 + (6 - 3)", 10)

puts "Congratulations! You've completed the Math Quiz!"

