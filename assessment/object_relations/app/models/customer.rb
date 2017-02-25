class Customer

  attr_accessor :name, :customers
  @@customers = []

  def initialize(name)
    @name = name
    @@customers << self
    @reviews = []
  end

  def self.all
    @@customers
  end

  def self.find_by_name(name)
  
    self.all.find do |customer|
       customer.name == name
    end
  end

  def self.add_review(text, restaurant)
    new_review = Review.new(text, self, restaurant)
#     to add the customer, need to refer to it by self.
    @reviews << new_review
  end


end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
