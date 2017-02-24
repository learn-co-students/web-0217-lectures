require 'pry'

class Restaurant
	# has_many :customers, through: :reviews	
	# has_many :reviews
	attr_accessor :name, :customers, :reviews

	@@all = []

	def initialize(name)
		@name = name 
		@customers = []
		@reviews = []
		@@all << self
	end

  	def self.all
  		@@all
  	end

  	def self.find_by_name(name)
  		Restaurant.all.each do |restaurant|
  			if restaurant.name == name 
  				return restaurant
  			end
  		end
  	end

  	def reviews(review)
  		reviews << review
  		review.restaurant << self
  	end

  	def customers(customer)
  		customers << customer
  		customer.reviews << self
  	end
    
  	binding.pry
end