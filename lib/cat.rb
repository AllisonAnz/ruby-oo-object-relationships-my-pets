class Cat
  #can change its owner, mood
  attr_accessor :owner, :mood
  #can't change its name
  attr_reader :name

  @@all = []

  #Initializes with a name and an Owner
  #Initializes with a nervous mood
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous" 
    @@all << self
  end
 
  #knows all the cats
  def self.all
    @@all
  end
    
end