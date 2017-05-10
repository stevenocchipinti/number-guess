################################################################################
#
#                        Number Guessing Game Exercises
#                        ------------------------------
#
#
# Exercises:
#
#   1. When the player guesses correctly, show a message saying:
#        "Well done! You got it right!"
#      and when the player guesses incorrectly, show a message saying:
#        "Oops, nice try"
#
#   2. When the player guesses a smaller number, show a message saying:
#        "Nope.... higher"
#      and when the player guesses a larger number, show a message saying:
#        "Nope.... lower"
#
#   3. Let the player have 5 guesses
#
#   4. Let the player have unlimited number of guesses, make sure they have the
#   "Guess: " prompt everytime
#
#   5. Allow the user to type "exit" to quit the program
#
#   6. When the game has ended, show the user how many guesses it took them
#   (before they won or quit the game)
#
#   7. Make this a single player game by starting with a random number between
#   0-20 that the player has to try to guess - don't forget to change the
#   messages to the user to make that clear
#
################################################################################

puts "Welcome to the number guessing game - its so much fun!"
puts "I've thought of a number between 0 - 20, you have to guess it."

number = rand 0..20

guesses = 0
loop do
  print "Guess: "
  guess = gets.strip
  guesses += 1

  if guess == "exit"
    puts
    puts "-- GAME OVER! --"
    break
  end

  if number == guess.to_i
    puts
    puts "Well done! You got it right!"
    break
  elsif number < guess.to_i
    puts "Nope.... lower"
  elsif number > guess.to_i
    puts "Nope.... higher"
  end
end

puts "Score: #{guesses}"
