$player = nil
$computer = nil

$validOptions = {
    1 => "Stone",
    2 => "Paper",
    3 => "Scissors"
}

$winsTo = {
    "Stone" => "Scissors",
    "Paper" => "Stone",
    "Scissors" => "Paper"
}

def pickOption
    puts "\n"
    puts "=-"*7
    puts "Pick an option"
    puts "=-"*7
    puts "[1] Stone\n[2] Paper\n[3] Scissors\n[4] Exit"
    puts "\nGet a option ==> "
    option = gets.chomp().to_i

    case option
        when 1,2,3
            $player = $validOptions[option.to_i]
        when 4
            return $player = 4
        else
            puts "Invalid option!"
            $player = nil
    end
end

def gameResult
    $computer = $validOptions[rand(1..3)]

    if $player == 4
        return puts "\nThanks for playing!"
    elsif $player == $computer
        return puts "\nIt's a tie! Computer choose #{$computer} and you choose #{$player}"
    elsif $winsTo[$player] == $computer
        return puts "\nCongratulations! You won the game, you choose #{$player} and computer choose #{$computer}"
    elsif $winsTo[$computer] == $player
        return puts "\ntry again! Computer won the game, you choose #{$player} and computer choose #{$computer}"
    end
end

while $player != 4 || $player == nil
    pickOption
    gameResult
end
