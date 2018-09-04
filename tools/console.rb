require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new("Bob")
o2 = CarOwner.new("Mary")
o3 = CarOwner.new("Billy")
m1 = Mechanic.new("Al", "antique")
m2 = Mechanic.new("Joe", "clunker")

c1 = Car.new("make 1", "model 1", "antique", o1, m1)
c2 = Car.new("make 2", "model 2", "clunker", o1, m2)
c3 = Car.new("make 3", "model 3", "antique", o2, m1)
c4 = Car.new("make 4", "model 4", "clunker", o3, m2)

binding.pry
