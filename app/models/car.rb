class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_cars_classifications
    cars = @@all.map do |car|
      car.classification
    end
    cars.uniq
  end

  def car_classification_mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end

# **Car**
#
#   - Get a list of all cars DONE
#
#   - Get a list of all car classifications DONE
#
#   - Get a list of mechanics that have an expertise that matches the car classification DONE
