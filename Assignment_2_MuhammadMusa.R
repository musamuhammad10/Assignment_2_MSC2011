# Muhammad Musa
# MSC2011 Assignment 2
# June 10, 2022

# Prompt the user to enter a three digit positive number.
usernum <- readline("Please enter a three digit positive number: ")

# Convert user input from character type to numeric.
usernum <- as.numeric(usernum)

# Check if the user input is numeric and a positive 3 digit number. If not, print an error message and quit.
# If input is valid, continue to check if the number is narcissistic.
if (is.na(usernum) | usernum < 100 | usernum >= 1000 | usernum != round(usernum) ) {
  print("INVALID ENTRY, program is terminating. Please try again!")
} else {
  
  # Checking if the user's input is a narcissistic number and printing the appropriate message
  # Converting user input into a character type again in order to use the strsplit function to split the elements of the character vector.
  # This function would split the user's input into individual digits (elements). This result is converted back to numeric type and stored as a variable, 'digit'.
  digit <- as.numeric(strsplit(as.character(usernum),"")[[1]])
  
  # Arithmetic to first cube each element of the input and then summing them up.
  digit_cubed <- digit^3
  sum_digit_cubed <- sum(digit_cubed)
  
  # Comparing user's input with the calculated sum to determine if user's input is a narcissistic number.
  if (usernum == sum_digit_cubed) {
    print(paste(usernum, "is a narcissistic number!"))
  } else {
    print(paste(usernum, "is not narcissistic number!"))
    
  }
}



