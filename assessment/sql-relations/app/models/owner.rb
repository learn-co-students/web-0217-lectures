class Owner
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods
  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def restaurants
    sql = "SELECT owner FROM restaurants
    INNER JOIN owner ON restaurants.owner_id = owner.id
    WHERE restaurants.owner_id = ?"
    sql.db.execute(sql, self.id)
  end
end
