# Function to calculate the circumference (perimeter) of an equilateral triangle
def calculate_circumference(side_length)
  return side_length * 3
end

# Function to calculate the area of an equilateral triangle
def calculate_area(side_length)
  return ((Math.sqrt(3) / 4) * side_length ** 2).round(2)
end

# Function to get the side length from the user
def get_side_length
  print "Enter the side length of the equilateral triangle: "
  input = gets.chomp

  # Validate the input
  if valid_number?(input)
    return input.to_f
  else
    puts "Invalid input. Please enter a number."
    return get_side_length
  end
end

# Function to check if a string is a valid number
def valid_number?(str)
  Float(str) != nil rescue false
end

# Main program loop
loop do
  # Get the side length from the user
  side_length = get_side_length

  # Calculate the circumference and area
  circumference = calculate_circumference(side_length)
  area = calculate_area(side_length)

  # Print the results
  puts "For an equilateral triangle with side length #{side_length}:"
  puts "The circumference (perimeter) is #{circumference}"
  puts "The area is #{area}"

  # Ask the user if they want to continue
  print "Do you want to calculate for another triangle? (yes/no): "
  break if gets.chomp.downcase == 'no'
end

puts "Thank you for using the equilateral triangle calculator. Goodbye!"
