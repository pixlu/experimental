// Generate two random numbers
var num1 = Math.floor(Math.random() * 10) + 1;
var num2 = Math.floor(Math.random() * 10) + 1;

// Generate a random operator
var operators = ['+', '-', '*', '/'];
var operator = operators[Math.floor(Math.random() * operators.length)];

// Calculate the answer based on the operator
var answer;
switch (operator) {
  case '+':
    answer = num1 + num2;
    break;
  case '-':
    answer = num1 - num2;
    break;
  case '*':
    answer = num1 * num2;
    break;
  case '/':
    answer = num1 / num2;
    break;
}

// Print the equation
var equation = "The equation is: " + num1 + " " + operator + " " + num2 + " = ?";
console.log(equation);

// Show the equation in a browser popup
alert(equation);

// Ask the user for their answer
var userAnswer = prompt("Enter your answer:");

// Check if the user's answer is correct
if (parseFloat(userAnswer) === answer) {
  alert("Correct! Well done.");
} else {
  alert("Incorrect. The correct answer is " + answer + ".");
}