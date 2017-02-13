# Get my number game
# Written by: Ben Swanson

puts "Welcome to 'Get My Number'"
print "What's your name?"

input = gets

name = input.chomp

puts "Welcome, #{name}!"
puts "I have a random number between 1-100 can you guess it?"

target = rand(100) + 1
numGuesses = 0

guessedit = false

until numGuesses == 10 || guessedit

puts "#{10 - numGuesses} guesses left"

print "Make a guess!"
guess = gets.to_i

numGuesses += 1

if guess < target
	puts "Too low"
elsif guess > target
	puts "Too high"
elsif guess == target
	puts "Good job, #{name}!"
	puts "You guessed the number in #{numGuesses} guesses!"
	guessedIt = true
end

end

unless guessedIt
	puts "Sorry you did not get the number, it was #{target}."
end


