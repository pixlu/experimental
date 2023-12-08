# Function to generate a random list of answer choices for each question
def generate_answer_choices(correct_answer, all_answers)
  choices = all_answers.reject { |choice| choice == correct_answer }
  choices.shuffle.unshift(correct_answer)
end

# Function to display a single question
def display_question(index, question, choices)
  puts "Question #{index + 1}: #{question}"
  choices.each_with_index { |choice, i| puts "  #{i + 1}. #{choice}" }
end

# Function to get user answer for a single question
def get_user_answer(choices)
  print "Your answer (enter the number): "
  user_input = gets.chomp.to_i

  if user_input.between?(1, choices.length)
    choices[user_input - 1]
  else
    puts "Invalid choice. Skipping to the next question."
    nil
  end
end

# List of Roblox quiz questions and their correct answers
roblox_questions = {
  "What year was Roblox officially released?" => {
    "1999" => false,
    "1987" => false,
    "1965" => false,
    "2006" => true
  },
  "Which of the following is a currency in Roblox?" => {
    "Dollars" => false,
    "Robux" => true,
    "Gold Coins" => false,
    "Diamonds" => false
  },
  "Who is the founder of Roblox?" => {
    "David Baszucki" => true,
    "John Doe" => false,
    "Jane Doe" => false,
    "Erik Cassel" => false
  },
  "What is the scripting language used in Roblox Studio?" => {
    "Java" => false,
    "C++" => false,
    "Lua" => true,
    "Python" => false
  },
  "Which of the following is a popular Roblox game creation tool?" => {
    "Unity" => false,
    "Blender" => false,
    "Roblox Studio" => true,
    "Visual Studio Code" => false
  },
  # ... (Add more questions as needed)
}

# Function to generate a quiz from the question set
def generate_roblox_quiz(questions)
  quiz = {}
  questions.each do |question, answer_choices|
    correct_answer = answer_choices.key(true)
    shuffled_choices = generate_answer_choices(correct_answer, answer_choices.keys)
    quiz[question] = { correct_answer: correct_answer, choices: shuffled_choices }
  end
  quiz
end

# Function to run the quiz
def run_quiz(quiz)
  user_answers = {}

  quiz.each_with_index do |(question, data), index|
    display_question(index, question, data[:choices])
    user_answer = get_user_answer(data[:choices])

    user_answers[question] = user_answer unless user_answer.nil?
    puts "\n"
  end

  user_answers
end

# Function to check the user's answers
def check_user_answers(quiz, user_answers)
  correct_count = 0
  user_answers.each do |question, user_answer|
    correct_answer = quiz[question][:correct_answer]
    if user_answer == correct_answer
      puts "Correct! #{question}"
      correct_count += 1
    else
      puts "Incorrect. The correct answer is: #{correct_answer} (#{question})"
    end
  end
  correct_count
end

# Main program
roblox_quiz = generate_roblox_quiz(roblox_questions)
user_answers = run_quiz(roblox_quiz)

puts "\nQuiz Results:"
correct_count = check_user_answers(roblox_quiz, user_answers)
puts "You answered #{correct_count} out of #{roblox_quiz.size} questions correctly."
