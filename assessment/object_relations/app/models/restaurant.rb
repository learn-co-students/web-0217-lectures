class Restaurant

  attr_accessor :name, :reviews, :customers

  RESTAURANTS = []

  def initialize(name)
    @name = name
    RESTAURANTS << self
  end

  def self.all
    RESTAURANTS.each do |restaurant|
      "#{restaurant}\n"
    end
  end

  def find_by_name(name)
    RESTAURANTS.find do |restaurant|
      restaurant == name
    end
  end

  def reviews=(reviews)
    @reviews
  end

  def customers=(customers)
    @customers
  end


  # Restaurant.all
  # Restaurant.find_by_name(name)
  # Restaurant#reviews
  # Restaurant#customers
    # should return all of the customers who have written reviews.
end
