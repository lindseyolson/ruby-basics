class Customer
  attr_accessor :name, :email

  def initialize(name, email)
    @name, @email = name, email
  end
end

customer = Customer.new("Lindsey", "lindseyolson00@gmail.com")
puts customer.inspect



#struct
#when you start adding a bunch of methods within the struct - time to make  real class
Customer = Struct.new(:name, :email) do
  def name_with_email
    "#{name} <#{email}>"
  end
end

customer = Customer.new("Lindsey", "lindseyolson00@gmail.com")
puts customer.inspect

#structs are neat: each of the attributes will be passed as block to the each method
customer.each do |attribute|
  puts attribute
end
# Lindsey
# lindseyolson00@gmail.com

customer.each_pair do |name, value|
  puts "#{name} - #{value}"
end
# name - Lindsey
# email - lindseyolson00@gmail.com
