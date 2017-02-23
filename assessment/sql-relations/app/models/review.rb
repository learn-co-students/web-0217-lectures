class Review
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id



  def customer
    sql = <<-SQL
      SELECT customer.* FROM customers
      INNER JOIN reviews ON reviews.customer_id = customers.id
      WHERE reviews.customer_id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end

  def restaurant
    sql = <<-SQL
      SELECT restaurants.* FROM restaurants
      INNER JOIN reviews ON reviews.restaurant_id = restaurants.id
      WHERE reviews.customer_id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end

end

# I.... don't know what's going on here. I'm lost and really jut tried to copy paste / edit based off the first example given. I don't know what I'm doing and am feeling really uncomfortable with how little I've absorbed apparently. Please help me figure out what's most important and guide me to understand everything I need to know by graduation.

# Review#customer
# Review#restaurant
