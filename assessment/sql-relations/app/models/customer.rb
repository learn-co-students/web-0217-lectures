class Customer
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

    has_many :restaurant_customers
    has_many :restaurants, through: :restaurant_customers
    has_many :reviews

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
    birth_year: "INTEGER",
    hometown: "TEXT"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def reviews
    SELECT * FROM customers
    INNER JOIN reviews ON reviews.customer_id
    WHERE reviews.customer_id = customers.id
  end

  def restaurants
    sql = <<-SQL
      SELECT restaurants.* FROM restaurants
      INNER JOIN reviews ON reviews.restaurant_id = restaurants.id
      WHERE reviews.customer_id = restaurant.id
    SQL
    self.class.db.execute(sql, self.id)
  end
end


# customer = Customer.all.first
# id = 1
# customer.restaurants
