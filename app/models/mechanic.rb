class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

  # Get a list of all mechanics
  def self.all
    @@all
  end

  # Get a list of all cars that a mechanic services
  def client_cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  # Get a list of all the car owners that go to a specific mechanic
  def my_clients
    self.client_cars.map do |car|
      car.owner
    end
  end

  # Get a list of the names of all car owners who go to a specific mechanic
  def my_clients_names
    self.my_clients.map do |client|
      client.name
    end
  end

end # end Mechanic class
