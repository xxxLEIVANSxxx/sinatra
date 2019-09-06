class TemperatureMetric
	
  attr_accessor :value, :unit  

  def initialize(value, unit)
	@value = value
	@unit = unit
  end

  def to_fahrenheit
    case @unit
      when "celsius"
        return (@value * 9/5 + 32).round(2)
      when "kelvin"
        return ((@value - 273.15) * 9/5 + 32).round(2)
    end
    return @value
  end

  def to_kelvin
    case @unit
      when "celsius"
        return (@value + 273.15).round(2)
      when "fahrenheit"
        return ((@value - 32) * 5/9 + 273.15).round(2)
    end
    return @value
  end

  def to_celsius
    case @unit
      when "fahrenheit"
        return ((@value - 32) * 5/9).round(2)
      when "kelvin"
        return (@value - 273.15).round(2)
    end
    return @value
  end
end
