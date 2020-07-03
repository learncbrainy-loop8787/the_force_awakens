class Planets
  attr_accessor :name, :rotation_period, :orbital_period, :diameter, :climate, :gravity, :population

  @@all = []

def initialize(name:, rotation_period:, orbital_period:, diameter:, climate:, gravity:, population:)
  self.name = name
self.rotation_period = rotation_period
self.orbital_period = orbital_period
self.diameter = diameter
self.climate = climate
self.gravity = gravity
self.population = population

    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
