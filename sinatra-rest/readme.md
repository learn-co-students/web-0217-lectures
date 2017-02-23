REST
  Representational State Transferff

  Protocol that sets a structure, for the routes

  routes
  Action   What we want                | url         REquest    | AR           Sql                       Ruby                
  index |  All items in the resource     /players      Get      Player.all    select * from players;    self.all

  Show      See a specific player        /players/3    Get

  New       See the form to create                     Get

  Create     Create a player  



  Edit     See the form to edit

  Update   Update the player

  Delete    Remove the player





get('/players') do
  @players = Player.all
  erb :index
end


class Player
  @@all = []
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end
