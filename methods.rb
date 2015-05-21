def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def greeting(name)

	current_hour = determine_current_hour

	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif (current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif (current_hour > 18 || current_hour < 2 )
		time = "evening"
	end

	puts "Good #{time}, #{name.capitalize}."
end


print "Hi, I'm Nabeel. What's your name?"
name = gets

greeting(name)

=begin
	
HERE'S A TIP:

Focus on making the template first. THEN put the content in. 

Step 1: Make Template-

def 'METHOD NAME(arguments)''
	'METHOD'
end
'CALL METHOD(arguments)'

Step 2: Fill in the quotes... Without the quotes ofcourse

def sum_up(num1, num2)
	puts num1 + num2
end
sum_up(2, 2)

P.S. This greyish text is a comment and gets ignored by the computer. I learned this today. Basically, only humans can understand this. LOL.
You can do it too by inserting text between =begin & =end 

GoodNight!
	
=end 