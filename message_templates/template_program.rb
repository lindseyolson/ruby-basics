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

    puts "Choose Guest:"
    print_guest_list
    print "Enter number of guest: "
    guest_id = gets.chomp.to_i
    guest = find_guest(guest_id)
    print_template_list(guest)





    # puts "Choose Template:"
    # print_template_list(guest)


  end

  def print_hotel_list
    hotels.each do |hotel|
      puts hotel.print_hotel
    end
  end

  def print_guest_list
    guests.each do |guest|
      puts guest.print_guest('list_with_numbers')
    end
  end

  def print_template_list(guest)
    templates.each do |template|
      puts template.print_templates(guest)
    end
  end

  def find_guest(guest_id)
    results = []
    guests.each do |guest|
      if guest.id == guest_id
        results.push(guest)
      end
    end
    results[0]
  end







end


template = TemplateProgram.new
# template.run
template.run
