class Owner
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  has_many :restaurants
  has_many :customers, through: :restaurants


  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def restaurants
    SELECT * FROM restaurants INNER JOIN restaurants ON restaurants.owner_id WHERE restaurants.owner_id = owner.id
  end
end
