# Generate two random numbers
num1 = rand(18..30)
num2 = rand(18..30)

# Generate a random operator
operator = ['+', '-', '*', '/'].sample

# Calculate the answer based on the operator
answer = case operator
when '+'
  num1 + num2
when '-'
  num1 - num2
when '*'
  num1 * num2
when '/'
  num1 / num2.to_f
end

# Print the equation
puts "The equation is: #{num1} #{operator} #{num2} = ?"

# Ask the user for their answer
print "Enter your answer: "
user_answer = gets.chomp.to_f

# Check if the user's answer is correct
if user_answer == answer
  puts "Correct! Well done."
else
  puts "Incorrect. The correct answer is #{answer}."
end

