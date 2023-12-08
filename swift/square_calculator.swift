import Foundation

// Function to calculate the circumference (perimeter) of a square
func calculateCircumference(sideLength: Double) -> Double {
    return 4 * sideLength
}

// Function to calculate the area of a square
func calculateArea(sideLength: Double) -> Double {
    return pow(sideLength, 2)
}

// Function to get the side length from the user
func getSideLength() -> Double {
    print("Enter the side length of the square:")
    if let input = readLine(), let sideLength = Double(input) {
        return sideLength
    } else {
        print("Invalid input. Please enter a number.")
        return getSideLength()
    }
}

// Main program loop
while true {
    // Get the side length from the user
    let sideLength = getSideLength()

    // Calculate the circumference and area
    let circumference = calculateCircumference(sideLength: sideLength)
    let area = calculateArea(sideLength: sideLength)

    // Print the results
    print("For a square with side length \(sideLength):")
    print("The circumference (perimeter) is \(circumference)")
    print("The area is \(area)")

    // Ask the user if they want to continue
    print("Do you want to calculate for another square? (yes/no)")
    if let input = readLine(), input.lowercased() == "no" {
        break
    }
}

print("Thank you for using the square calculator. Goodbye!")
