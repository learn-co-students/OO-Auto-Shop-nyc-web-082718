require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new('owner1')
o2 = CarOwner.new('owner2')

c1 = Car.new('toyota', 'prius', 'hybrid', o1)
c2 = Car.new('toyota', 'corolla', 'sedan', o1)
c3 = Car.new('nissan', 'altima', 'sedan', o2)

m1 = Mechanic.new('mech1', 'hybrid')
m2 = Mechanic.new('mech2', 'sedan')

binding.pry
