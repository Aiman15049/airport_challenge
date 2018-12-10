
class Airport

  def initialize(capacity)
    @capacity = 100
    @planes = []
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

  def stormy?
    rand(1..10) > 6
  end

end
