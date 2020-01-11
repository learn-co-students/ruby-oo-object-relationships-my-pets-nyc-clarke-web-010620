require 'pry'
class Owner
  attr_reader :name, :species
  
  @@all = []
  def initialize(name,species = 'human')
    @name = name
    @species = species

    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.map {|dog| dog.walk_dog}
  end

  def feed_cats
    self.cats.map{|cat| cat.feed_cat}
  end

  def sell_pets
    self.dogs.map {|dog| dog.sell_dog}
    self.cats.map {|cat| cat.sell_cat}
  end

  def list_pets
    dogs = self.dogs.length
    cats = self.cats.length
    "I have #{dogs} dog(s), and #{cats} cat(s)."
  end

end