class Review

	attr_accessor :customer, :restaurant
	@@all = []

  def initialize(customer,restaurant)
  	@customer = customer
    @restaurant = restaurant
  	@@all << self
    # @restaurant.reviews.
  end

  def self.all
  	@@all
  end

  def self.customer
    customer.name
  end

  def self.restaurant
    restaurant.name
  end

end

