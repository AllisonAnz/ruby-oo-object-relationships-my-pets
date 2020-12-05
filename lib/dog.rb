class Dog
  #can change its owner, mood
  attr_accessor :owner, :mood
  #can't change its name
  attr_reader :name

  @@all = []

  #initializes with a name and Owner
  #initializes with a nervous mood
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  #knows all the dogs
  def self.all
    @@all
  end
end