# Struct to represent an octagon
class Octagon
  attr_accessor :side_length

  def initialize(side_length)
    @side_length = side_length
  end

  def calculate_circumference
    return side_length * 8
  end

  def calculate_area
    return 2 * (1 + Math.sqrt(2)) * side_length**2
  end
end

def display_main_menu
  puts "========== Octagon Calculator =========="
  puts "1. Calculate Circumference"
  puts "2. Calculate Area"
  puts "3. View History"
  puts "4. Exit"
  print "Enter your choice (1-4): "
end

def log_calculation(type, side_length, result)
  File.open("calculator_history.txt", "a") do |file|
    file.puts("#{Time.now}: #{type.capitalize} Calculation - Side Length: #{side_length}, Result: #{result}")
  end
end

def calculate_circumference(octagon)
  circumference = octagon.calculate_circumference
  puts "Circumference of the octagon with side length #{octagon.side_length}: #{circumference}"
  log_calculation("circumference", octagon.side_length, circumference)
end

def calculate_area(octagon)
  area = octagon.calculate_area
  puts "Area of the octagon with side length #{octagon.side_length}: #{area}"
  log_calculation("area", octagon.side_length, area)
end

def display_history
  puts "========== Calculation History =========="
  if File.exist?("calculator_history.txt")
    File.readlines("calculator_history.txt").each { |line| puts line }
  else
    puts "No history available."
  end
end

# Main program loop
loop do
  display_main_menu
  user_choice = gets.chomp.to_i

  case user_choice
  when 1, 2
    # Ask the user for the side length of the octagon
    print "Enter the side length of the octagon: "
    side_length = gets.chomp.to_f

    octagon = Octagon.new(side_length)

    if octagon.side_length <= 0
      puts "Invalid side length. Please enter a positive number."
      next
    end

    case user_choice
    when 1
      calculate_circumference(octagon)
    when 2
      calculate_area(octagon)
    end
  when 3
    display_history
  when 4
    puts "Thank you for using the advanced octagon calculator. Goodbye!"
    break
  else
    puts "Invalid choice. Please enter a number between 1 and 4."
  end
end
