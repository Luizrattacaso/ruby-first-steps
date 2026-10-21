$hidden_number = rand(1..100)
$player = 0
$tries = 0

def guessing_game
    puts "=-="*21
    puts "Guessing game --> Try to find the hidden number from 1 to 100"
    puts "=-="*21

    puts "\nChoose a number between 1 to 100: "
    number = gets.chomp().to_i

    if number === $hidden_number
        puts "\nCongrats! You find the hidden number #{$hidden_number} with #{$tries} tentatives"
        $player = number
    elsif number > $hidden_number
        puts "\nTry again. the number you choose was higher that the hidden number"
    else
        puts "\nTry again. the number you choose was lower that the hidden number"
    end
    puts "\n\n"
    $tries += 1
end

while $hidden_number != $player
    guessing_game
end