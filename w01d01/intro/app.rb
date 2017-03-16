require 'pp'
require 'mac/say'

# Work with the voices collection

# puts "hello"
# puts "world"

# with constant name in the constructor and custom rate
talker = Mac::Say.new(voice: :alex, rate: 200)
talker.say string: "Hello guys!"
talker.say string: "How are you?"
