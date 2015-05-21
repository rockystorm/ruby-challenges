def always_3(number)
	(((number + 5) * 2 - 4) / 2 - number)
end

puts "Give me a number"
given_number = gets.to_i

puts "Always " + always_3(given_number).to_s