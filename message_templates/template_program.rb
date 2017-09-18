require './data_loader'

class TemplateProgram
  include Enumerable
  attr_accessor :hotels, :guests, :templates

  def initialize
    @hotels = []
    @guests = []
    @templates = []
  end

  def run
    @hotels = DataLoader.new.load_hotels('./data/Companies.json')
    @guests = DataLoader.new.load_guests('./data/Guests.json')
    @templates = DataLoader.new.load_templates('./data/Templates.json')

    puts "Send Text Message to Guest"
    puts "Choose Hotel:"
    print_hotel_list
    print "Enter number of hotel: "
    hotel_id = gets.chomp.to_i
    hotel = find_hotel(hotel_id)

    puts "Choose Guest:"
    print_guest_list
    print "Enter number of guest: "
    guest_id = gets.chomp.to_i
    guest = find_guest(guest_id)

    puts "Choose Template:"
    print_template_list(guest, hotel)


  end

  def print_hotel_list
    hotels.each do |hotel|
      puts hotel.print_hotel('list_with_numbers')
    end
  end

  def print_guest_list
    guests.each do |guest|
      puts guest.print_guest('list_with_numbers')
    end
  end

  def print_template_list(guest, hotel)
    templates.each do |template|
      puts template.print_templates(guest, hotel)
    end
  end

  def find_guest(guest_id)
    results = []
    guests.each do |guest|
      if guest.id == guest_id
        results.push(guest)
      end
    end
    results[0] #if I had more time >> I would figure out a better way than just returning index 0
  end

  def find_hotel(hotel_id)
    results = []
    hotels.each do |hotel|
      if hotel.id == hotel_id
        results.push(hotel)
      end
    end
    results[0] #if I had more time >> I would figure out a better way than just returning index 0
  end
end


template = TemplateProgram.new
template.run