class Car

  attr_reader :make, :model, :owner, :classification
  attr_accessor :mechanic

  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic
    @@all << self
  end

  # Get a list of all cars
  def self.all
    @@all
  end

  # Get a list of all car classifications
  def self.classifications
    self.all.map do |car|
      car.classification
    end.uniq
  end

  # Get a list of mechanics that have an expertise that matches the car classification
  def mechanics
    Mechanic.all.select do |mech|
      mech.specialty == self.classification
    end
  end

end
