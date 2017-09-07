require "json"

json_string = '{"name": "Lindsey", "location": "St. Paul", "Year": 2017}'
JSON.parse(json_string)
# => {"name"=> "Lindsey", "Location"=> "St. Paul", "Year"=> 2017}

hash = JSON.parse(json_string)
# => {"name"=> "Lindsey", "Location"=> "St. Paul", "Year"=> 2017}
hash["name"]
# => "Lindsey"

my_hash = { name: "Lindsey", email: "lindseyolson00@gmail.com" }
JSON.dump(my_hash)
# returns JSON string

JSON.load()
# will load in JSON string from a file
