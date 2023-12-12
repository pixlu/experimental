class Multiplier
  def initialize(base_number)
    @base_number = base_number
  end

  def multiply_by(factor)
    @base_number *= factor
  end

  def display_result
    puts "Current result: #{@base_number}"
  end
end

class InteractiveMultiplier
  def initialize
    @base_number = get_base_number
    @multiplier = Multiplier.new(@base_number)
  end

  def start_interaction
    puts "Welcome to the Interactive Multiplier!"
    loop do
      print "Say 'yes' to multiply, 'exit' to end: "
      user_input = gets.chomp.downcase

      case user_input
      when 'yes'
        get_factor_and_multiply
      when 'exit'
        break
      else
        puts "Invalid input. Please enter 'yes' or 'exit'."
      end
    end
  end

  private

  def get_base_number
    print "Enter the base number: "
    get_valid_number_input
  end

  def get_factor_and_multiply
    print "Enter a factor to multiply by: "
    factor = get_valid_number_input

    @multiplier.multiply_by(factor)
    @multiplier.display_result
  end

  def get_valid_number_input
    loop do
      input = gets.chomp
      return input.to_f if input.match?(/^-?\d+(\.\d+)?$/)

      puts "Invalid input. Please enter a valid number."
    end
  end
end

# Example: Start the interactive multiplier
interactive_multiplier = InteractiveMultiplier.new
interactive_multiplier.start_interaction
