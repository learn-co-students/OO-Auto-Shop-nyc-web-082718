class Car
  @@all = []
  @@classifications

  attr_reader :make, :model, :mechanic

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification

    @@all << self
    if !@@classifications.include? classification
      @@classifications << classification
    end
  end

  def self.all
    @@all
  end

  def self.classifications
    @@classifications
  end

end
