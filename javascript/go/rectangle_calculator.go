package main

import (
	"fmt"
	"math"
	"strconv"
	"strings"
)

type Rectangle struct {
	Length float64
	Width  float64
}

func NewRectangle(length, width float64) Rectangle {
	return Rectangle{Length: length, Width: width}
}

func (r Rectangle) Area() float64 {
	return r.Length * r.Width
}

func (r Rectangle) Perimeter() float64 {
	return 2 * (r.Length + r.Width)
}

func (r Rectangle) DiagonalLength() float64 {
	return math.Sqrt(math.Pow(r.Length, 2) + math.Pow(r.Width, 2))
}

func (r Rectangle) IsSquare() bool {
	return r.Length == r.Width
}

func getNumericInput(prompt string) float64 {
	var input string
	fmt.Print(prompt)
	fmt.Scanln(&input)

	value, err := strconv.ParseFloat(strings.TrimSpace(input), 64)
	if err != nil {
		fmt.Println("Invalid input. Please enter a valid numeric value.")
		return getNumericInput(prompt)
	}

	return value
}

func getMeasurementUnit(prompt string) string {
	var unit string
	fmt.Print(prompt)
	fmt.Scanln(&unit)
	unit = strings.TrimSpace(strings.ToLower(unit))

	if unit != "cm" && unit != "meters" {
		fmt.Println("Invalid input. Please enter 'cm' or 'meters'.")
		return getMeasurementUnit(prompt)
	}

	return unit
}

func displayMenu() {
	fmt.Println("\nChoose an option:")
	fmt.Println("1. Calculate Area")
	fmt.Println("2. Calculate Perimeter")
	fmt.Println("3. Calculate Diagonal Length")
	fmt.Println("4. Check if Rectangle is a Square")
	fmt.Println("5. Perform Multiple Calculations")
	fmt.Println("6. Exit")
}

func main() {
	fmt.Println("Welcome to the Rectangle Calculator!")

	for {
		displayMenu()

		var choice int
		fmt.Print("Enter your choice: ")
		fmt.Scanln(&choice)

		switch choice {
		case 1:
			length := getNumericInput("Enter the length of the rectangle: ")
			width := getNumericInput("Enter the width of the rectangle: ")
			rectangle := NewRectangle(length, width)
			area := rectangle.Area()
			unit := getMeasurementUnit("Enter the unit of measurement for the dimensions: ")
			fmt.Printf("\nThe area of the rectangle is %.2f square %s.\n", area, unit)
		case 2:
			length := getNumericInput("Enter the length of the rectangle: ")
			width := getNumericInput("Enter the width of the rectangle: ")
			rectangle := NewRectangle(length, width)
			perimeter := rectangle.Perimeter()
			unit := getMeasurementUnit("Enter the unit of measurement for the dimensions: ")
			fmt.Printf("\nThe perimeter of the rectangle is %.2f %s.\n", perimeter, unit)
		case 3:
			length := getNumericInput("Enter the length of the rectangle: ")
			width := getNumericInput("Enter the width of the rectangle: ")
			rectangle := NewRectangle(length, width)
			diagonalLength := rectangle.DiagonalLength()
			unit := getMeasurementUnit("Enter the unit of measurement for the dimensions: ")
			fmt.Printf("\nThe diagonal length of the rectangle is %.2f %s.\n", diagonalLength, unit)
		case 4:
			length := getNumericInput("Enter the length of the rectangle: ")
			width := getNumericInput("Enter the width of the rectangle: ")
			rectangle := NewRectangle(length, width)
			if rectangle.IsSquare() {
				fmt.Println("The rectangle is a square.")
			} else {
				fmt.Println("The rectangle is not a square.")
			}
		case 5:
			fmt.Println("Performing multiple calculations...")
			for i := 0; i < 3; i++ {
				length := getNumericInput("Enter the length of the rectangle: ")
				width := getNumericInput("Enter the width of the rectangle: ")
				rectangle := NewRectangle(length, width)

				fmt.Printf("\nResults for a rectangle with dimensions %.2f x %.2f:\n", length, width)
				fmt.Printf("Area: %.2f square units\n", rectangle.Area())
				fmt.Printf("Perimeter: %.2f units\n", rectangle.Perimeter())
				fmt.Printf("Diagonal Length: %.2f units\n", rectangle.DiagonalLength())
				fmt.Printf("Is Square: %t\n", rectangle.IsSquare())
				fmt.Println("--------------------------------------")
			}
		case 6:
			fmt.Println("Exiting the Rectangle Calculator. Goodbye!")
			return
		default:
			fmt.Println("Invalid choice. Please enter a number between 1 and 6.")
		}
	}
}
