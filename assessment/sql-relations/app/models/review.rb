class Review
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  belongs_to :customer
  belongs_to :restaurant
  belongs_to :owner, through: :restaurant


  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id



  def customer
    SELECT * FROM customers INNER JOIN reviews ON reviews.customer_id WHERE customers.id = reviews.customer_id
  end

  def restaurant
    SELECT * FROM restaurants INNER JOIN reviews ON reviews.customer_id WHERE restaurants.id = reviews.restaurant_id
  end

end
