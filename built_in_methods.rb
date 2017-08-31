#-----------------STRINGS------------------#
string = "Minneapolis"

string.each_char { |c| print "#{c}-"}
#M-i-n-n-e-a-p-o-l-i-s=> "Minneapolis"

string.each_char { |c| print "#{c}-"}.upcase
#M-i-n-n-e-a-p-o-l-i-s=> "MINNEAPOLIS"

string = "Minneapolis
          is a great
          city!"

string.each_line { |line| puts "* #{line}" }
# * Minneapolis
# * is a great
# * city!

#-----------------INTEGERS-----------------#
5.downto(3) { |number| print number }
#543=> 5

#-----------------ARRAYS-------------------#
array = [1,2,3]

array.each { |item| print "-#{item}-" }
#-1--2--3-=> [1, 2, 3]

array.select { |item| item > 2 }
#=> [3]
#array is unmodified

array.reject { |item| item % 3 == 0 }
#=> [1, 2]

array.count
#=> 3

array.count { |item| item % 3 == 0 }
#=> 1

#-----------------HASHES-------------------#
hash = { 'name' => 'Lindsey', 'location' => 'St. Paul' }

hash.each do |key, value|
  puts "key: #{key}, value: #{value}"
end
#key: name, value: Lindsey
#key: location, value: St. Paul

hash.each_key {|k| puts "key: #{k}"}
#key: name
#key: location

hash.each_value {|v| puts "value: #{v}"}
#value: Lindsey
#value: St. Paul

hash.keep_if {|key, value| key == "name"}
#=> {"name"=>"Lindsey"}
#original hash IS modified

hash.reject {|key, value| key == "name"}
#{}
#original hash is NOT modified

hash.select {|key, value| key == "name"}
#=> {"name"=>"Lindsey"}
#original hash is NOT modified
