#----CREATE LIST PROGRAM----#

#create list method
def create_list
  print "What is the list name? "
  name = gets.chomp
  hash = { "name" => name, "items" => Array.new }
  return hash
end

#add list item method
def add_list_item
  print "What is the item called? "
  item_name = gets.chomp

  print "How much? "
  quantity = gets.chomp.to_i

  hash = { "name" => item_name, "quantity"=> quantity }
  return hash
end

#print separator line method
def print_separator(character="-")
  puts character * 80
end

#print out list method
def print_list(list)
  puts "List: #{list['name']}"
  print_separator
  list['items'].each do |item|
    puts "\tItem: " + item['name'] + "\t\t\t" +
         "Quantity: " + item['quantity'].to_s
  end
  print_separator()
end

#create list
list = create_list()
#add each list item to array in items key
list['items'].push(add_list_item())
list['items'].push(add_list_item())
list['items'].push(add_list_item())

#print out created list
puts "Here's your list:\n"
print_list(list)
