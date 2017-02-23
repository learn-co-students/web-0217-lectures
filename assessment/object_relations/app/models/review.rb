class Review

  attr_accessor :customer, :restaurant

  @@all = []

  def initialize(customer:, restaurant:)
    @customer = customer
    @restaurant = restaurant
    @@all << self
    if !@restaurant.reviews.include?(self)
      @@restaurant.reviews << self
    end
  end

  def self.all
    @@all
  end



end
