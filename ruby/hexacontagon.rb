class HexacontagonCalculator
  def initialize
    @side_length = 0.0
    @precision = 2
  end

  def start
    puts "Welcome to the Hexacontagon Calculator!"
    loop do
      display_menu
      choice = get_user_choice

      case choice
      when 1
        get_side_length
      when 2
        calculate_circumference
      when 3
        calculate_area
      when 4
        display_info
      when 5
        customize_precision
      when 6
        break
      else
        puts "Invalid choice. Please try again."
      end
    end

    puts "Thank you for using the Hexacontagon Calculator!"
  end

  private

  def display_menu
    puts "\nMenu:"
    puts "1. Enter side length"
    puts "2. Calculate circumference"
    puts "3. Calculate area"
    puts "4. Display hexacontagon info"
    puts "5. Customize precision"
    puts "6. Exit"
  end

  def get_user_choice
    print "Enter your choice (1-6): "
    gets.chomp.to_i
  end

  def get_positive_float(prompt)
    loop do
      print prompt
      input = gets.chomp.to_f
      return input if input.positive?

      puts "Please enter a positive number."
    end
  end

  def get_side_length
    @side_length = get_positive_float("Enter the side length of the hexacontagon: ")
    puts "Side length set to #{@side_length}."
  end

  def calculate_circumference
    if @side_length.positive?
      circumference = 60 * @side_length
      puts "Hexacontagon Circumference: #{format_number(circumference)}"
    else
      puts "Please enter the side length first."
    end
  end

  def calculate_area
    if @side_length.positive?
      apothem = calculate_apothem
      area = (60 * @side_length * apothem) / 2.0
      puts "Hexacontagon Area: #{format_number(area)}"
    else
      puts "Please enter the side length first."
    end
  end

  def calculate_apothem
    side_half_length = @side_length / 2.0
    side_angle = 360.0 / 60
    apothem = side_half_length / Math.tan(Math::PI / 180 * side_angle / 2)
  end

  def display_info
    puts "\nHexacontagon Information:"
    puts "Side length: #{@side_length}"
    apothem = calculate_apothem
    puts "Apothem: #{format_number(apothem)}"
    puts "Interior angle: #{format_number(360.0 / 60)} degrees"
    puts "Circumradius: #{format_number(calculate_circumradius)}"
  end

  def calculate_circumradius
    @side_length / (2 * Math.sin(Math::PI / 60))
  end

  def customize_precision
    print "Enter the desired precision for display: "
    precision = gets.chomp.to_i
    @precision = precision if precision.positive?
    puts "Precision set to #{@precision} decimal places."
  end

  def format_number(number)
    format("%.#{@precision}f", number)
  end
end

# Instantiate and start the calculator
calculator = HexacontagonCalculator.new
calculator.start
