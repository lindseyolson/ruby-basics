module Inventoryable
  def self.included(klass) #this method allows you to take out the "extend Inventoryable::ClassMethods" in the Shirt class.
    klass.extend(ClassMethods)
    klass.extend(Enumerable)
  end

  module ClassMethods
    def create(attributes)
      object = new(attributes)
      instances.push(object)
      return object
    end

    def instances
      @instances ||= []
    end

    def each(&block)
      instances.each(&block)
    end

    def report(title, items)
      puts "-" * 50
      puts title
      puts "-" * 50
      items.each do |item|
        line = []
        line.push("Item: #{item.attributes[:name]}")
        line.push("Stock: #{item.stock_count}")
        if item.attributes.include?(:size)
          line.push("Size: #{item.attributes[:size]}")
        end
        puts line.join("\t")
      end
      puts "-" * 50
      puts "\n"
    end

    def in_stock_report
      title = "#{self.to_s} In Stock Report"
      reportable = instances.select{ |instance| instance.in_stock? }
      report(title, reportable)
    end

    def out_of_stock_report
      title = "#{self.to_s} In Stock Report"
      reportable = instances.select{ |instance| !instance.in_stock? }
      report(title, reportable)
    end
  end

  def stock_count
    @stock_count ||= 0
  end

  def stock_count=(number)
    @stock_count = number
  end

  def in_stock?
    stock_count > 0
  end
end

module MinneapolisShop
  class Shirt
    include Inventoryable
    attr_accessor :attributes

    def initialize(attributes)
      @attributes = attributes
    end
  end

  class Pant
    include Inventoryable
    attr_accessor :attributes

    def initialize(attributes)
      @attributes = attributes
    end
  end

  class Accessory
    include Inventoryable
    attr_accessor :attributes

    def initialize(attributes)
      @attributes = attributes
    end
  end
end

shirt = MinneapolisShop::Shirt.create(name: "tank", size: "L")
shirt.stock_count = 10
shirt = MinneapolisShop::Shirt.create(name: "tank", size: "M")
shirt.stock_count = 0
pant = MinneapolisShop::Pant.create(name: "jeans", size: "S")
pant.stock_count = 2
pant = MinneapolisShop::Pant.create(name: "jeans", size: "M")
pant.stock_count = 5
accessory = MinneapolisShop::Accessory.create(name: "Belt", size: "M")
accessory.stock_count = 1
accessory = MinneapolisShop::Accessory.create(name: "Belt", size: "L")
accessory.stock_count = 1
accessory = MinneapolisShop::Accessory.create(name: "Necklace")
accessory.stock_count = 3

MinneapolisShop::Shirt.in_stock_report
MinneapolisShop::Pant.in_stock_report
MinneapolisShop::Accessory.in_stock_report

MinneapolisShop::Shirt.out_of_stock_report
