class Restaurant


  @@restaurant = []

  def initialize(name)
    @name = name
    @@restaurant << self
  end

  def self.all
    @@restaurant
  end

  def self.find_by_name(name)
    self.restaurant.find do |restaurant|
      if restaurant.name == name
        restaurant.name
      end
    end
  end

  def self.customers
#     not sure about this method.
    if Customer.exists?
      return customer.review
    end
  end

end
