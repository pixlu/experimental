# Define a hash mapping countries to continents
countries_to_continents = {
  "Brazil" => "South America",
  "Japan" => "Asia",
  "Canada" => "North America",
  "Australia" => "Oceania",
  "Germany" => "Europe",
  "India" => "Asia",
  "Mexico" => "North America",
  "Egypt" => "Africa",
  "Argentina" => "South America",
  "China" => "Asia",
  "France" => "Europe",
  "Italy" => "Europe",
  "Chile" => "South America",
  "New Zealand" => "Oceania",
  "Spain" => "Europe",
  "South Korea" => "Asia",
  "USA" => "North America",
  "Kenya" => "Africa",
  "Russia" => "Europe",
  "Turkey" => "Asia",
  "Netherlands" => "Europe",
  "Indonesia" => "Asia",
  "Saudi Arabia" => "Asia",
  "Sweden" => "Europe",
  "Greece" => "Europe",
  "Peru" => "South America",
  "Iran" => "Asia",
  "Norway" => "Europe",
  "Thailand" => "Asia",
  "Colombia" => "South America",
  "Poland" => "Europe",
  "Vietnam" => "Asia",
  "Switzerland" => "Europe",
  "South Africa" => "Africa",
  "Philippines" => "Asia",
  "Belgium" => "Europe",
  "Austria" => "Europe",
  "Malaysia" => "Asia",
  "Ireland" => "Europe",
  "Singapore" => "Asia",
  "Israel" => "Asia",
  "Denmark" => "Europe",
  "Finland" => "Europe",
  "Portugal" => "Europe",
  "Hungary" => "Europe",
  "Czech Republic" => "Europe",
  "Romania" => "Europe",
  "Bangladesh" => "Asia",
  "Pakistan" => "Asia",
  "Nigeria" => "Africa",
  "Morocco" => "Africa",
  "Algeria" => "Africa",
  "Ukraine" => "Europe",
  "Iraq" => "Asia",
  "Ecuador" => "South America",
  "Venezuela" => "South America",
  "Ghana" => "Africa",
  "Kazakhstan" => "Asia",
  "Cuba" => "North America",
  "Malta" => "Europe",
  "Iceland" => "Europe",
  "Jamaica" => "North America",
  "Mongolia" => "Asia",
  "Croatia" => "Europe",
  "Slovakia" => "Europe",
  "Sri Lanka" => "Asia"
}

# Ensure uniqueness of countries
unique_countries = countries_to_continents.keys.uniq

# Initialize variables
score = 0
total_questions = 5

# Loop for 5 questions
total_questions.times do |question_number|
  # Select a random country from the unique list
  random_country = unique_countries.sample

  # Ask the user to identify the continent of the selected country
  puts "Question #{question_number + 1}: In what continent is #{random_country} located?"
  
  # Get user input
  user_input = gets.chomp

  # Check if the user's input is correct
  if user_input.downcase == countries_to_continents[random_country].downcase
    puts "Correct! #{random_country} is in #{countries_to_continents[random_country]}."
    score += 1
  else
    puts "Incorrect. #{random_country} is in #{countries_to_continents[random_country]}."
  end

  puts "Your current score is #{score}/#{question_number + 1}.\n\n"

  # Remove the selected country from the unique list to avoid repetition
  unique_countries.delete(random_country)
end

# Display the final score
puts "Quiz complete! Your final score is #{score}/#{total_questions}."
