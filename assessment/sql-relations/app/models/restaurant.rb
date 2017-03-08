class Restaurant
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  belongs_to :owner
  has_many :restaurant_customers
  has_many :customers, through: :restaurant_customers
  has_many :reviews

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
    location: "TEXT",
    owner_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def owner
    SELECT * FROM owners INNER JOIN restaurant ON restaurant.owner_id WHERE restaurant.owner_id = owners.id
  end
end
