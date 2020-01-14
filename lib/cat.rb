class Cat
  @@all = []
  def initialize(name, owner, mood = "nervous")
      @name = name
      @owner = owner
      @mood = mood
      @@all << self
  end
  attr_accessor :owner, :mood
  attr_reader :name
  attr_writer
  def self.all
    @@all
  end
end