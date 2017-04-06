# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)

marbles <- c("orange","yellow", "white", "blue", "green", "black");

# Use the `sample` function to select a single marble

single.marble <- sample(marbles,1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)

MarbleGame <- function(color.guess) {
  picked <- sample(marbles,1)
  if(picked == color.guess) {
    return("You guessed correctly")
  } else {
    return("You guessed wrong")  
  }
}

# Play the marble game!


# Bonus: Play the marble game until you win, keeping track of how many tries you take

have.not.won <- TRUE
tries <- 0
while(have.not.won) {
  tries <- tries + 1
  guess <- sample(marbles,1)
  if(MarbleGame(guess) == "You guessed correctly") {
    have.not.won <- FALSE
  }
}

print(tries)

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability

correct <- 0
for(i in 1:1000) {
  guess <- sample(marbles,1)
  if(MarbleGame(guess) == "You guessed correctly") {
    correct <- correct + 1
  }
}

probability <- correct / 1000
expected.probability <- 1/6


