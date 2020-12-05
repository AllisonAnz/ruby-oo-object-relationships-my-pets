class Owner
  # code goes here
  #can have a name
  #cannot change owner's name
  attr_reader :name, :species
  
  @@all = []

  #initialize with a species set to human
  #can't change its species
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  #can say its a species
  def say_species
    "I am a #{self.species}."
  end

  #.all returns all instances of Owner that have been created
  def self.all
    @@all
  end

  #.count returns the number of owners that have been created
  def self.count
    self.all.count
  end

  #reset_all can reset the owners that have been created
  def self.reset_all
    self.all.clear
  end

  #returns a collection of all cats that belong to the owner
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  #returns a collection all dogs that belong to the owner
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  #can buy a cat this is an instance of the Cat class
  def buy_cat(name)
    Cat.new(name, self)
  end

  #can buy a dog this is an instance of the Dog class
  def buy_dog(name)
    Dog.new(name, self)
  end

  #walks the dogs which makes the dogs mood happy
  def walk_dogs
    self.dogs.each{ |dog| dog.mood = "happy" }
  end

  #feed cats which makes the cats mood happy
  def feed_cats
    self.cats.each{ |cat| cat.mood = "happy" }
  end

  #can sell all its pets, which makes them nervous
  #can sell all its pets, which leaves them without an owner 
  def sell_pets
    pets = self.dogs + self.cats

    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  #can list off its pets
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
