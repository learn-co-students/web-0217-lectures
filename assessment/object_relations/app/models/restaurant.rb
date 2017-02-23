class Restaurant

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @reviews = []
  @customers = []
end

def self.all
  @@all
end

def self.find_by_name(name)
  @@all.find do |restaurant|
    restaurant.name == name
  end
end



end
