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
    sql = "SELECT customer FROM review
    INNER JOIN customer ON review.customer_id = review.id
    WHERE owner.review_id = ?"
    sql.db.execute(sql, self.id)
  end

  def restaurant
    sql = "SELECT review FROM restaurant
    INNER JOIN review ON review.restaurant_id = review.id
    WHERE owner.review_id = ?"
    sql.db.execute(sql, self.id)
  end

end
