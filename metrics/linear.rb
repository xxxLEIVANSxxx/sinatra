class LinearMetric
  attr_accessor :value, :unit

  def initialize(value, unit)
	@value = value
	@unit = unit
  end

  def to_inch
    case @unit
      when "cm"
        return (@value * 0.3937).round(2)
      when "foot"
        return @value * 12.0
      when "m"
        return (@value * 39.37).round(2)
      when "yard"
        return @value * 36.0
      when "mile"
        return (@value * (5280 * 12.0)).round(2)
      when "km"
        return (@value * (39.37 * 1000.0)).round(2)
    end
    return @value
  end

  def to_cm
    case @unit
      when "inch"
        return (@value * 2.54).round(2)
      when "foot"
        return (@value * 30.48).round(2)
      when "m"
        return ((@value * (39.37 * 2.54)).ceil).round(2)
      when "yard"
        return (@value * 91.44).round(2)
      when "mile"
        return (@value * (5280.0 * 30.48)).round(2)
      when "km"
        return (@value * ((39.37 * 2.54) * 1000.0)).round(2)
    end
    return @value
  end

  def to_foot
    case @unit
      when "inch"
        return (@value / 12.0).round(2)
      when "cm"
        return (@value / 30.48).round(2)
      when "m"
        return (@value / (0.9144 / 3.0)).round(2)
      when "yard"
        return (@value * 3.0).round(2)
      when "mile"
        return (@value * 5280.0).round(2)
      when "km"
        return ((@value * (1000.0 / (0.9144 / 3.0))).ceil).round(2)
    end
    return @value
  end

  def to_m
    case @unit
      when "inch"
        return (@value / 39.37).round(2)
      when "cm"
        return (@value / (39.37 * 2.54)).round(2)
      when "foot"
        return ((@value * 12.0) / 39.37).round(2)
      when "yard"
        return (@value * 0.9144).round(2)
      when "mile"
        return (@value * 1609.34).round(2)
      when "km"
        return (@value * 1000.0).round(2)
    end
    return @value
  end

  def to_yard
    case @unit
      when "inch"
        return (@value / 36.0).round(2)
      when "cm"
        return (@value / 91.44).round(2)
      when "foot"
        return (@value / 3.0).round(2)
      when "m"
        return (@value * 1.0936).round(2)
      when "mile"
        return (@value * (1600 * 1.1)).round(2)
      when "km"
        return (@value * (1000 * 1.0936)).round(2)
    end
    return @value
  end

  def to_mile
    case @unit
      when "inch"
        return (@value / (63.36 * 1000.0)).round(2)
      when "cm"
        return (@value / 160934.4).round(2)
      when "foot"
        return ((@value / 5280.0)).round(2)
      when "m"
        return (@value / 1609.3).round(2)
      when "yard"
        return (@value / (1600.0 * 1.1)).round(2)
      when "km"
        return (@value / 1.609).round(2)
    end
    return @value
  end

  def to_km
    case @unit
      when "inch"
        return (@value / (39.37 * 1000.0)).round(2)
      when "cm"
        return (@value / ((39.37 * 2.54) * 1000.0)).round(2)
      when "foot"
        return (@value / (1000.0 / (0.9144 / 3.0))).round(2)
      when "m"
        return (@value / 1000.0).round(2)
      when "yard"
        return (@value / (1000.0 * 1.0936)).round(2)
      when "mile"
        return (@value * 1.6).round(2)
    end
    return @value
  end
end
