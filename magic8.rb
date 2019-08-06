require 'rubygems'
require 'twilio-ruby'

account_sid = ""
auth_token = ""
 
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
  :from => "twilio phone number", 
  :to =>"+your phone number", 
  :body => "Haaaii!"
)
 
puts message.to

puts "Ask me anything"


