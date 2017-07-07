# Get My Number Game
puts "Welcome"
print "What's your name? "
input=gets().chomp
puts "Welcome, #{input}!"

puts "I've got a number from 1 to 100"
puts "Can you guess it?"
target=rand(100)+1
num_guesses=0
guessed_it=false
#remaining_guesses=10-num_guesses
until num_guesses==10 || guessed_it
    puts "You've got #{10-num_guesses} guesses left."
    print "Make a guess: "
    guess=gets.to_i
    if (guess<target )
        puts "Oops. Your guess was LOW."
    elsif(guess>target) 
        puts "Oops. Your guess was High"
    else 
        puts "Sorry You get my number."
        guessed_it=true
    end
    num_guesses=num_guesses+1
end

unless guessed_it
    puts "Sorry, you didn't get my number.My number is #{target}"
end