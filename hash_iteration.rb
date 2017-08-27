#-------------------------------------------#
#---------HASH ITERATION WITH EACH----------#
place = { "name" => "St. Paul", "state"=>"MN" }

place.each do |key, value|
  puts "The hash key is #{key} and the value is #{value}."
end

#-----------------EACH_KEY------------------#
place.each_key do |key|
  puts "Key: #{key}"
end

#----------------EACH_VALUE-----------------#
place.each_value do |value|
  puts "Value: #{value}"
end
