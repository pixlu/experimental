# Function to calculate the circumference of an octagon
def calculate_circumference(side_length)
    return side_length * 8
  end
  
  # Function to check if the user's answer is correct
  def check_answer(user_answer, correct_answer)
    if user_answer.round(2) == correct_answer
      puts "Correct! Well done."
    else
      puts "Incorrect. The correct answer is #{correct_answer}."
    end
  end
  
  # Function to validate the user's input
  def validate_input(input)
    if input.downcase == 'exit'
      return 'exit'
    elsif input.to_f.to_s == input || input.to_i.to_s == input
      return input.to_f
    else
      return 'invalid'
    end
  end
  
  # Main program loop
  loop do
    # Ask the user for the side length of the octagon
    print "Enter the side length of the octagon (or 'exit' to quit): "
    input = gets.chomp
  
    # Validate the user's input
    side_length = validate_input(input)
  
    # Exit the program if the user enters 'exit'
    break if side_length == 'exit'
  
    # Ask the user to re-enter the side length if the input is invalid
    if side_length == 'invalid'
      puts "Invalid input. Please enter a number."
      next
    end
  
    # Calculate the circumference
    circumference = calculate_circumference(side_length)
  
    # Ask the user to calculate the circumference
    puts "Calculate the circumference of an octagon with side length #{side_length}."
    print "Enter your answer: "
    user_answer = gets.chomp.to_f
    check_answer(user_answer, circumference)
  end
  
  puts "Thank you for using the octagon calculator. Goodbye!"
