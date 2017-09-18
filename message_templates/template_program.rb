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

    puts "-" * 50
    puts "Send Text Message to Guest"
    puts "-" * 50
    puts "Choose Hotel:"
    puts "-" * 30
    print_hotel_list
    print "Enter number of hotel: "
    input = gets.chomp.to_i
    hotel = find_hotel(input)

    puts "-" * 30
    puts "Choose Guest:"
    puts "-" * 30
    print_guest_list
    print "Enter number of guest: "
    input = gets.chomp.to_i
    guest = find_guest(input)

    puts "-" * 30
    puts "Choose Template:"
    puts "-" * 30
    print_template_list(guest, hotel)
    print "Enter number of template: "
    input = gets.chomp.to_i
    template = find_template(input)
    print_chosen_template(guest, hotel, template)
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

  def print_chosen_template(guest, hotel, template)
    puts template.print_templates(guest, hotel)
  end


# with additional time >> I would have created 1 function for the below to reuse for all
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

def find_template(template_id)
  results = []
  templates.each do |template|
    if template.id == template_id
      results.push(template)
    end
  end
  results[0] #if I had more time >> I would figure out a better way than just returning index 0
end

end


template = TemplateProgram.new
template.run
