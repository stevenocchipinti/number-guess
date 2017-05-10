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
#
# Extension Exercises:
#
#   1. Let the player have unlimited number of guesses, make sure they have the
#   "Guess: " prompt everytime.
#
#   2. Allow the user to type "exit" to quit the program
#
################################################################################

require 'io/console'

print "Player 1, pick a number: "
number = STDIN.noecho(&:gets).to_i

puts
puts "Player 2, try to guess the number!"

loop do
  print "Guess: "
  guess = gets.strip

  exit if guess == "exit"

  if number == guess.to_i
    puts "Well done! You got it right!"
    exit
  elsif number < guess.to_i
    puts "Nope.... lower"
  elsif number > guess.to_i
    puts "Nope.... higher"
  end
end

puts "Game Over!"
