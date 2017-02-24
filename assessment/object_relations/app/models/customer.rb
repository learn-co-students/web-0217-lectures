require 'pry'
class Customer
	attr_accessor :name, :reviews
	#has_many :reviews
	#has_many :restaurants, through: :reviews

  @@all = []

  def initialize(name)
  	@name = name
  	@reviews = []
  	@restaurants = []
  	@@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
  	self.all.each do |customer|
  		if customer.name == name
  			return customer
  		end
  	end
  end
  
  def add_review(review, res_name)
    restaurant = add_restaurant(res_name)
    review = Review.new(self,restaurant)
    reviews << restaurant
  end
  
  def add_restaurant(name)
    restaurant = Restaurant.new(name)
    restaurants << restaurant
  end
  # Customer#add_review

  # Customer#add_restaurant
  # binding.pry
end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
