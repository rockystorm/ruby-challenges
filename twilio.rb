require 'rubygems'
require 'twilio-ruby'

account_sid = "AC9d0a8c58917b35623778f757f6e145cf"
auth_token = "46daac71f2db88d8370aaf0212c32619"
 
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "+14088162282", 
  :to =>"+15103041037", 
  :body => "Hey ask me a question?!"
)
 
puts message.to

question = gets.chomp

response = @client.account.messages.create(
  :from => "+14088162282", 
  :to =>"+15103041037", 
  :body => [
  	"It is certain",
    "It is decidedly so",
	"Without a doubt",
	"Yes definitely",
	"You may rely on it",
	"As I see it, yes",
	"Most likely",
	"Outlook good",
	"Yes",
	"Signs point to yes",
	"Reply hazy try again",
	"Ask again later",
	"Better not tell you now",
	"Cannot predict now",
	"Concentrate and ask again",
	"Don't count on it",
	"My reply is no",
	"My sources say no",
	"Outlook not so good",
	"Very doubtful"].sample
)

puts response.to