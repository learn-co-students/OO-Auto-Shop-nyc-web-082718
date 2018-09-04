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

  def cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def owners
    self.cars.map do |car|
      car.owner
    end
  end

  def owner_names
    self.owners.map do |owner_obj|
      owner_obj.name
    end
  end

end
