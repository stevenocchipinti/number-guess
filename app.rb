require 'io/console'

print "Player 1, pick a number: "
number = STDIN.noecho(&:gets)

puts
puts "Player 2, try to guess the number!"
print "Guess: "
guess = gets

puts number == guess
