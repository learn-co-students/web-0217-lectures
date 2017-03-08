class Restaurant
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
    location: "TEXT",
    owner_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def owner
    sql = "SELECT restaurant FROM owner
    INNER JOIN restaurant ON owner.restaurant_id = restaurant.id
    WHERE owner.restaurant_id = ?"
    sql.db.execute(sql, self.id)
  end
  
end
