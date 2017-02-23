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
    customers_array = @@cutomers
    customers_array.find do |customer|
      if customer.name == name
        customer.name
      end
    end
  end

  def self.add_review
    new_review = Review.new(customer)
    @reviews << new_review
  end


end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
