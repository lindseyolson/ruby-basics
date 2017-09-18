class Hotel
  attr_accessor :id, :company, :city, :timezone

  def initialize(id, company, city, timezone)
    @id = id
    @company = company
    @city = city
    @timezone = timezone
  end

  def id
    @id
  end

  def print_hotel(format)
    case format
    when 'list_with_numbers'
      id.to_s + ": " + company
    when 'company_name'
      company
    end
  end

end
