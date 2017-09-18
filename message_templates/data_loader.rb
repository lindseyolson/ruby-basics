require 'json'
require './hotel'
require './guest'
require './template'

class DataLoader

  def load_hotels(file)
    array = JSON.parse(File.read(file))
    hotels = []
    array.each do |hotel|
      hotels << Hotel.new(hotel['id'], hotel['company'], hotel['city'], hotel['timezone'])
    end
    hotels
  end

  def load_guests(file)
    array = JSON.parse(File.read(file))
    guests = []
    array.each do |guest|
      guests << Guest.new(guest['id'], guest['firstName'], guest['lastName'], guest['reservation'])
    end
    guests
  end

  def load_templates(file)
    array = JSON.parse(File.read(file))
    templates = []
    array.each do |template|
      templates << Template.new(template['id'], template['message'])
    end
    templates
  end

end
