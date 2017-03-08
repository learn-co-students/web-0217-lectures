class Review
  attr_accessor :title, :customer, :restaurant

  REVIEW = []

  def initialize(title)
    @title = title
    REVIEW << self
  end

  def self.all
    REVIEW.each do |review|
      "#{review}\n"
    end
  end

  def customer=(customer)
    @customer
  end

  def restaurant=(restaurant)
    @restaurant
  end

  #Review.all
  # Review#customer
  # Review#restaurant
end
