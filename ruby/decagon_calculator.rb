# Define a Decagon class to encapsulate the calculations
class Decagon
  attr_accessor :side_length

  def initialize(side_length)
    @side_length = side_length
  end

  def area
    # Formula for the area of a regular decagon
    (5 * side_length**2) / (4 * Math.tan(Math::PI / 10))
  end

  def circumference
    # Formula for the circumference of a regular decagon
    10 * side_length
  end

  def apothem
    # Formula for the apothem of a regular decagon
    side_length / (2 * Math.tan(Math::PI / 10))
  end

  def interior_angle
    # Formula for the interior angle of a regular decagon
    180 - 360 / 10
  end

  def perimeter
    # Formula for the perimeter of a regular decagon
    10 * side_length
  end

  def semi_perimeter
    # Formula for the semi-perimeter of a regular decagon
    5 * side_length
  end

  def circumcircle_radius
    # Formula for the radius of the circumcircle of a regular decagon
    side_length / (4 * Math.sin(Math::PI / 10))
  end

  def diagonal_length
    # Formula for the length of a diagonal in a regular decagon
    side_length * Math.sqrt(1 + 2 * Math.cos(2 * Math::PI / 10))
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

# Function to get valid measurement unit input from the user
def get_measurement_unit(prompt)
  print "#{prompt} (e.g., cm, meters): "
  unit = gets.chomp.strip.downcase

  until %w[cm meters].include?(unit)
    print "Invalid input. Please enter 'cm' or 'meters': "
    unit = gets.chomp.strip.downcase
  end

  unit
end

# Function to display menu options
def display_menu
  puts "\nChoose an option:"
  puts "1. Calculate Area"
  puts "2. Calculate Circumference"
  puts "3. Calculate Apothem"
  puts "4. Calculate Interior Angle"
  puts "5. Calculate Perimeter"
  puts "6. Calculate Semi-Perimeter"
  puts "7. Calculate Circumcircle Radius"
  puts "8. Calculate Diagonal Length"
  puts "9. Perform Multiple Calculations"
  puts "10. Exit"
end

# Main program
puts "Welcome to the Decagon Calculator!"

loop do
  display_menu

  choice = gets.chomp.to_i

  case choice
  when 1
    side_length = get_numeric_input("Enter the side length of the decagon: ")
    decagon = Decagon.new(side_length)
    area = decagon.area
    unit = get_measurement_unit("Enter the unit of measurement for the side length")
    puts "\nThe area of the decagon is #{area.round(2)} square #{unit}."
  when 2
    side_length = get_numeric_input("Enter the side length of the decagon: ")
    decagon = Decagon.new(side_length)
    circumference = decagon.circumference
    unit = get_measurement_unit("Enter the unit of measurement for the side length")
    puts "\nThe circumference of the decagon is #{circumference.round(2)} #{unit}."
  when 3
    side_length = get_numeric_input("Enter the side length of the decagon: ")
    decagon = Decagon.new(side_length)
    apothem = decagon.apothem
    unit = get_measurement_unit("Enter the unit of measurement for the side length")
    puts "\nThe apothem of the decagon is #{apothem.round(2)} #{unit}."
  when 4
    decagon = Decagon.new(1)  # The side length doesn't matter for interior angle calculation
    puts "\nThe interior angle of the decagon is #{decagon.interior_angle} degrees."
  when 5
    side_length = get_numeric_input("Enter the side length of the decagon: ")
    decagon = Decagon.new(side_length)
    perimeter = decagon.perimeter
    unit = get_measurement_unit("Enter the unit of measurement for the side length")
    puts "\nThe perimeter of the decagon is #{perimeter.round(2)} #{unit}."
  when 6
    side_length = get_numeric_input("Enter the side length of the decagon: ")
    decagon = Decagon.new(side_length)
    semi_perimeter = decagon.semi_perimeter
    unit = get_measurement_unit("Enter the unit of measurement for the side length")
    puts "\nThe semi-perimeter of the decagon is #{semi_perimeter.round(2)} #{unit}."
  when 7
    side_length = get_numeric_input("Enter the side length of the decagon: ")
    decagon = Decagon.new(side_length)
    circumcircle_radius = decagon.circumcircle_radius
    unit = get_measurement_unit("Enter the unit of measurement for the side length")
    puts "\nThe radius of the circumcircle of the decagon is #{circumcircle_radius.round(2)} #{unit}."
  when 8
    side_length = get_numeric_input("Enter the side length of the decagon: ")
    decagon = Decagon.new(side_length)
    diagonal_length = decagon.diagonal_length
    unit = get_measurement_unit("Enter the unit of measurement for the side length")
    puts "\nThe length of a diagonal in the decagon is #{diagonal_length.round(2)} #{unit}."
  when 9
    # Option to perform multiple calculations
    puts "Performing multiple calculations..."
    3.times do
      side_length = get_numeric_input("Enter the side length of the decagon: ")
      decagon = Decagon.new(side_length)

      puts "\nResults for a decagon with side length #{side_length}:"
      puts "Area: #{decagon.area.round(2)} square units"
      puts "Circumference: #{decagon.circumference.round(2)} units"
      puts "Apothem: #{decagon.apothem.round(2)} units"
      puts "Interior Angle: #{decagon.interior_angle} degrees"
      puts "Perimeter: #{decagon.perimeter.round(2)} units"
      puts "Semi-Perimeter: #{decagon.semi_perimeter.round(2)} units"
      puts "Circumcircle Radius: #{decagon.circumcircle_radius.round(2)} units"
      puts "Diagonal Length: #{decagon.diagonal_length.round(2)} units"
      puts "--------------------------------------"
    end
  when 10
    puts "Exiting the Decagon Calculator. Goodbye!"
    break
  else
    puts "Invalid choice. Please enter a number between 1 and 10."
  end
end
