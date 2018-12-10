
class Airport

  def initialize(capacity)
    @capacity = 100
    @planes = []
    @weather_is_stormy = false
  end

  def land(plane)
    if @planes.length >= @capacity
      raise "Cannot land plane, airport at full capacity"
    elsif
      @weather_is_stormy == true
      raise "Cannot land plane, weather is too dangerous"
    else
      @planes << plane
      puts "airplane landed"
    end
  end

  def take_off(plane)
    if @weather_is_stormy == true
      raise "Cannot land plane, weather is too dangerous"
    else
      @planes.pop
      puts "plane has taken off"
  end
end

end
