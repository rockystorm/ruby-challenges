while 1 < 2
    puts "How are you feeling? Are you 'good' or 'bad'?"
    input = gets.chomp
    case input
        when "exit" then break
        when "bad" then puts "I still love you"
        else puts "I love you"
        end    
end