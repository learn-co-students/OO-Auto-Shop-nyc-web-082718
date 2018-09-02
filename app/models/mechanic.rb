class Mechanic
  @@all = []

  attr_reader :name, :specialty, :cars, :owners

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @cars = []

    @@all << self
  end

  def self.all
    @@all
  end

  def owner_names
    @owners.map { |o| o.name }
  end

end
