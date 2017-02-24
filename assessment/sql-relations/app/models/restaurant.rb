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

  def owners
    sql = <<-SQL
      SELECT owners.* FROM owners
      INNER JOIN restaurants ON restaurants.owner_id = owner.id
      WHERE restaurants.name = ?
    SQL
    self.class.db.execute(sql, ATTRIBUTES["name"])
  end
end