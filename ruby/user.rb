require 'pry'
class Player
  attr_reader :name
  
  @@all = []
  # def initialize(name)
  #   @name = name
  #   @@all << self
  # end

  def self.all
    @@all
  end

  def find_user(name)

  end


end

Pry.start

Player.new({})
