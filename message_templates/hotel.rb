class Hotel
  attr_accessor :id, :company, :city, :timezone

  def initialize(id, company, city, timezone)
    @id = id
    @company = company
    @city = city
    @timezone = timezone
  end

  def print_hotel
    id.to_s + ": " + company
  end

end

# a = Hotel.new(1, "Marriott", "St. Paul", "Central")
# puts a.to_s
