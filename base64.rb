require 'base64'

message = "Welcome to St. Paul"
emessage = Base64.encode64(message)
# will return encoded message
Base64.decode64(emessage)
# will return decoded message
