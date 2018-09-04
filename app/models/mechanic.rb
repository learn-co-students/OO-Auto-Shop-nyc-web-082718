class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars
    Car.all.select do |car|
      car.classification == self.specialty
    end
  end

  def list_of_car_owners
    cars = Car.all.select do |car|
      car.classification == self.specialty
    end
    car_owners = cars.map do |car|
      car.car_owner
    end
    car_owners.uniq
  end

  def name_of_car_owners
    cars = Car.all.select do |car|
      car.mechanic == self
    end
    car_owners = cars.map do |car|
      car.car_owner.name
    end
  end

end

# **Mechanic**
#
#   - Get a list of all mechanics DONE
#
#   - Get a list of all cars that a mechanic services DONE
#
#   - Get a list of all the car owners that go to a specific mechanic DONE
#
#   - Get a list of the names of all car owners who
#   go to a specific mechanic DONE
