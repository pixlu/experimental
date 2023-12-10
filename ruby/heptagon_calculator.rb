# Define a Heptagon class to encapsulate the calculations
class Heptagon
  attr_accessor :side_length

  def initialize(side_length)
    @side_length = side_length
  end

  def area
    # Formula for the area of a regular heptagon
    (7 * side_length**2) / (4 * Math.tan(Math::PI / 7))
  end

  def circumference
    # Formula for the circumference of a regular heptagon
    7 * side_length
  end
end

# Function to get valid numeric input from the user
def get_numeric_input(prompt)
  print prompt
  input = gets.chomp

  until /\A\d+(\.\d+)?\z/.match?(input)
    print "Invalid input. Please enter a valid numeric value: "
    input = gets.chomp
  end

  input.to_f
end

# Function to display menu options
def display_menu
  puts "\nChoose an option:"
  puts "1. Calculate Area"
  puts "2. Calculate Circumference"
  puts "3. Exit"
end

# Main program
puts "Welcome to the Heptagon Calculator!"

loop do
  display_menu

  choice = gets.chomp.to_i

  case choice
  when 1
    side_length = get_numeric_input("Enter the side length of the heptagon: ")
    heptagon = Heptagon.new(side_length)
    puts "\nThe area of the heptagon is #{heptagon.area.round(2)} square units."
  when 2
    side_length = get_numeric_input("Enter the side length of the heptagon: ")
    heptagon = Heptagon.new(side_length)
    puts "\nThe circumference of the heptagon is #{heptagon.circumference.round(2)} units."
  when 3
    puts "Exiting the Heptagon Calculator. Goodbye!"
    break
  else
    puts "Invalid choice. Please enter a number between 1 and 3."
  end
end
