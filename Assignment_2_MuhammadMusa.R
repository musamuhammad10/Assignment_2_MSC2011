# Prompt the user to enter a three digit positive number

usernum <- readline("Please enter a three digit positive number: ")
# Check if the user input is numeric. If not, print an error message and quit.

usernum <- as.numeric(usernum)

if (is.na(usernum) | usernum < 100 ) {
  print("Invalid entry, program is terminating. Please try again")
} else {
  
  digit <- as.numeric(strsplit(as.character(usernum),"")[[1]])
  x <- digit^3
  y <- sum(x)
  
  if (usernum == y) {
    print(paste(usernum, "is a nacissistic number"))
  } else {
    print(paste(usernum, "is not nacissistic number"))
    
  }
}

# Check if the number is narcissistic. A narcissistic number, or an Armstrong number, is a number that is equal to the 
# sum of the cubes of its own digits. 153, 370, 371, 407 are three digit Armstrong numbers.

# Display the result with an appropriate message, e.g. “127 is not an Armstrong number” or “370 is a narcissistic number” 
# or any additional fun text you may want to add.

