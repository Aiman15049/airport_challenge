require_relative 'weather'
class Airport

  def initialize(capacity, weather: Weather.new)
    @capacity = 100
    @planes = []
    @weather = weather
  end

  def land(plane)
    raise "Cannot land plane, airport at full capacity" if full?
    raise "Cannot land plane, weather is too dangerous" if stormy?
    @planes << plane
    puts "airplane landed"
  end

  def take_off(plane)
    raise "Cannot land plane, weather is too dangerous" if stormy?
    @planes.pop
    puts "plane has taken off"
  end

  private

  def full?
    @planes.length >= @capacity
  end

  attr_reader :weather


end
