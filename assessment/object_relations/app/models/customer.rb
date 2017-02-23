class Customer
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all < self
  end

  def self.find_by_name(name)
    @@all.find do |customer|
      customer.name == name
    end
  end

  def add_review
    restaurant = add_restaurant(restaurant_name)
    review = Review.new(customer: self, restaurant: restaurant)
    restaurant.customers << self
    restaurant.reviews << review
  end

  def add_restaurant(name)
    restaurant = Restaurant.new(restaurant_name)
#    restaurant.customers << self
  end

end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
