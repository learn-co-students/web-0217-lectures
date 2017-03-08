class Customer
  attr_accessor :name, :restaurant, :review

  CUSTOMERS = []

  @@review = {}

  def initialize(name)
    @name = name
    CUSTOMERS << self
  end

  def self.all
    CUSTOMERS.each do |customer|
      "#{customer}\n"
    end
  end

  def self.find_by_name(name)
    CUSTOMERS.find do |customer|
      customer == name
    end
  end

  def add_restaurant(restaurant_instance)
    @@review[restaurant.name]
  end

  def add_review(review, restaurant_instance)
    @@review[restaurant_instance.name] = review
  end

end

# I think I overthought this. I wanted these classes to belong to eachother... but I feel pretty lost working trough this to be honest. I think I had an idea of how this would work but I'm failing on execution. Please help when you can. I feel ill prepared for a future technical interview based on how I'm doing here today.
