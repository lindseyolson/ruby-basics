array = [1, 2, 3, 4, 5, 6]
hash = { name: "Lindsey", position: "Developer", location: "Minneapolis"}

# Any class that implements the enumerable module needs to provide an each method.
# Once the each method is provided, we get some really interesting methods we can use.
array.each {|item| puts "Item: #{item}"}
# Item: 1
# Item: 2
# Item: 3
# Item: 4
# Item: 5
# Item: 6
# =>[1, 2, 3, 4, 5, 6]

hash.each {|key, value| puts "Key: #{key}, Value: #{value}"}
# Key: name, Value: Lindsey
# Key: position, Value: Developer
# Key: location, Value: Minneapolis
# => {:name=>"Lindsey", :position=>"Student", :location=>"Minneapolis"}

array.member?(3)
# => true
array.member?(30)
# => false
hash.member?(:name)
# => true
hash.member?(:names)
# => false
array.all?{ |item| item > 3}
# => false
array.any?{ |item| item > 3}
# => true
hash.any?{|key,value| key == :name}
# => true
array.detect {|item| item > 3}
# => 4  (returns first item that is not false)
array.find {|item| item > 3}
# => 4  (returns first item that is not false)
array.find_all {|item| item > 3}
# => [4, 5, 6]
array.select {|item| item > 3}
# => [4, 5, 6]

## MAP ## will always return an array
array.map{ |item| item * 2 }
# => [2, 4, 6, 8, 10, 12]
array.map{ |item| item * 2}.map { |item| item.to_s }
# => ['2', '4', '6', '8', '10', '12']
hash.map {|key, value| value}
# => ["Lindsey", "Developer", "Minneapolis"]
hash.map {|key, value| key}
# => [:name, :position, :location]
hash.map {|key, value| value}.map {|item| item.length}
# => [7, 9, 11]

array.inject{|sum, element| sum += element}
# => 21
array.inject{|sum, element| sum - element}
# => -19
array.inject(0) {|sum, element| sum += element}
# => 21
array.inject(10) {|sum, element| sum += element}
# => 31
