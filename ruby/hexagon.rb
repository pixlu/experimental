# Function to calculate the circumference of a hexagon
def calculate_circumference(side_length)
    return side_length * 6
  end
  
  # Function to calculate the area of a hexagon
  def calculate_area(side_length)
    return ((3 * Math.sqrt(3) * side_length * side_length) / 2).round(2)
  end
  
  # Function to check if the user's answer is correct
  def check_answer(user_answer, correct_answer)
    if user_answer.round(2) == correct_answer
      puts "Correct! Well done."
    else
      puts "Incorrect. The correct answer is #{correct_answer}."
    end
  end
  
  # Main program loop
  loop do
    # Ask the user for the side length of the hexagon
    print "Enter the side length of the hexagon (or 'exit' to quit): "
    input = gets.chomp
  
    # Exit the program if the user enters 'exit'
    break if input.downcase == 'exit'
  
    # Convert the input to a float
    side_length = input.to_f
  
    # Calculate the circumference and area
    circumference = calculate_circumference(side_length)
    area = calculate_area(side_length)
  
    # Ask the user to calculate the circumference
    puts "Calculate the circumference of a hexagon with side length #{side_length}."
    print "Enter your answer: "
    user_answer = gets.chomp.to_f
    check_answer(user_answer, circumference)
  
    # Ask the user to calculate the area
    puts "Calculate the area of a hexagon with side length #{side_length}."
    print "Enter your answer: "
    user_answer = gets.chomp.to_f
    check_answer(user_answer, area)
  end
  
  puts "Thank you for using the hexagon calculator. Goodbye!"
