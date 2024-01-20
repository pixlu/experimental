import Foundation

// Struct to represent a square
struct Square {
    var sideLength: Double

    // Computed property to calculate perimeter (circumference)
    var perimeter: Double {
        return 4 * sideLength
    }

    // Computed property to calculate area
    var area: Double {
        return pow(sideLength, 2)
    }
}

// Function to display a welcome message
func displayWelcomeMessage() {
    print("Welcome to the Extended Square Calculator!")
    print("This program allows you to calculate the perimeter and area of a square.")
    print("Let's get started!\n")
}

// Function to get the side length from the user with error handling
func getSideLength() -> Double {
    while true {
        print("Enter the side length of the square:")
        if let input = readLine(), let sideLength = Double(input), sideLength > 0 {
            return sideLength
        } else {
            print("Invalid input. Please enter a positive number.")
        }
    }
}

// Main program loop
func runSquareCalculator() {
    while true {
        // Get the side length from the user
        let sideLength = getSideLength()

        // Create a square instance
        let square = Square(sideLength: sideLength)

        // Print the results
        print("\nFor a square with side length \(square.sideLength):")
        print(" - Perimeter: \(square.perimeter)")
        print(" - Area: \(square.area)")

        // Ask the user if they want to continue
        print("\nDo you want to calculate for another square? (yes/no)")
        if let input = readLine(), input.lowercased() == "no" {
            break
        }
    }
}

// Function to display a farewell message
func displayFarewellMessage() {
    print("\nThank you for using the Extended Square Calculator. Goodbye!")
}

// Main execution starts here
displayWelcomeMessage()

// Run the square calculator
runSquareCalculator()

// Display farewell message
displayFarewellMessage()
